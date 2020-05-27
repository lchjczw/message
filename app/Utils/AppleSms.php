<?php

namespace App\Utils;

use App\Constant\SmsConstant;
use App\Models\Configs;

use GuzzleHttp\Client;

/**
 * 苹果接码
 * http://47.57.151.105/apihelp.aspx
 * Class AppleSms
 * @package App\Utils
 */
class AppleSms
{

    protected $requestUrl = "http://47.57.151.105/yhapi.ashx?";

    protected $client = null;

    protected $token = null;
    // 单例模式
    protected static $instance;

    public static function getInstance()
    {
        if (!self::$instance instanceof self) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    public function __construct()
    {
        $this->client = new Client([
            //跟域名
            'base_uri' => $this->requestUrl,
            // 超时
            'timeout' => 2.0,
        ]);
        $this->token = Configs::getCodeValue(SmsConstant::$AppleSmsToken);
    }


    /**
     * 登录获取token
     * @throws \HttpException
     */
    protected function login()
    {
        $apiName = env('AppleName');
        $apiPwd = env('ApplePwd');

        $url = http_build_query([
            'act' => 'login',
            'ApiName' => $apiName,
            'PassWord' => $apiPwd
        ]);
        $response = $this->client->get($url);

        $result = explode('|', $response->getBody());
        if ($result[0] == 1) {
            $token = $result[0];
            // 拿到后更新库
            Configs::updateValueByKey(SmsConstant::$AppleSmsToken, $token);
            $this->token = $token;
        } else {
            throw  new \HttpException("登录失败" . $result[1]);
        }
    }


    /**
     * 参数名    参数值    必传    参数说明
     * act    getPhone    是    固定值，不允许修改
     * token    接口一返回的token值    是    接口一（用户登陆接口）返回的token值
     * iid    项目ID    是    在用户端查看
     * did    开发者ID        在开发者端查看
     * operator    运营商        汉字请url编码
     * provi    归属地-省        汉字请url编码
     * city    归属地-市        汉字请url编码
     * seq    号段选择        0 或 1 或 2；0代表不限号段，1代表只获取虚拟号段，2代表只获取正常号段
     * mobile    指定手机号        获取指定的手机号
     */
    public function getNumber($projectId, $operator = null, $provi = null, $city = null, $seq = null, $mobile = null)
    {
        $url = http_build_query([
            'act' => 'getPhone',
            'token' => $this->token,
            'iid' => $projectId,
            'operator' => $operator,
            'provi' => $provi,
            'city' => $city,
            'seq' => $seq,
            'mobile' => $mobile,
        ]);
        $response = $this->client->get($url);

        $result = $response->getBody();
        // 1|pid|提取时间|串口号|手机号|运营商|归属地
        return explode('|', $result);
    }


    // 获取验证码
    public function getCode($pid)
    {
        $url = http_build_query([
            'act' => 'getPhoneCode',
            'token' => $this->token,
            'pid' => $pid,
        ]);
        $response = $this->client->get($url);

        $result = $response->getBody();
        // 1|验证码数字|完整短信内容
        return explode('|', $result);
    }


    // 释放手机号
    public function setRelease($pid)
    {
        $url = http_build_query([
            'act' => 'setRel',
            'token' => $this->token,
            'pid' => $pid,
        ]);
        $response = $this->client->get($url);

        $result = $response->getBody();
//        成功返回：1|
//        失败返回：0|失败代号
        return explode('|', $result);
    }


    // 拉黑手机号
    public function setBlack($pid, $reason)
    {
        $url = http_build_query([
            'act' => 'addBlack',
            'token' => $this->token,
            'pid' => $pid,
            'reason' => $reason
        ]);
        $response = $this->client->get($url);

        $result = $response->getBody();
//        成功返回：1|
//        失败返回：0|失败代号
        return explode('|', $result);
    }
}
