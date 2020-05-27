<?php

namespace App\Utils;

use App\Constant\SmsConstant;
use App\Models\Configs;

use GuzzleHttp\Client;

/**
 * 柠檬接码
 * http://www2.lemon9191.com/get_api
 * Class AppleSms
 * @package App\Utils
 */
class LemonSms
{

    protected $requestUrl = "http://opapi.lemon9191.com/out/ext_api/";

    protected $client = null;

    protected $token = null;
    // 单例模式
    protected static $instance;

    protected $apiName;
    protected $apiPwd;

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
        $this->token = Configs::getCodeValue(SmsConstant::$LemonSmsToken);

        $this->apiName = env('LemonName');
        $this->apiPwd = env('LemonPwd');
    }


    /**
     * $cuy  国家代码
     * $pid  项目id
     */
    public function getNumber($cuy, $pid)
    {
        $url = http_build_query([
            'name' => $this->apiName,
            'pwd' => $this->apiPwd,
            'cuy' => $cuy,
            'pid' => $pid,
            'num' => 1,
            'noblack' => 0,
            'serial' => 2,
            'vip' => null
        ]);
        $response = $this->client->get('getMobile?' . $url);

        $result = $response->getBody();
        /**
         * //单条数据格式,格式为：国际通用手机号,手机号国际区号（国际区号分离有误差，仅供参考，最好校验后再使用)
         * {
         * "code": 200,
         * "msg": "Success",
         * "data":"+8613951100653,+86"
         * }
         * //多条数据格式
         * {
         * "code": 200,
         * "msg": "Success",
         * "data": [
         * "+8613384364128,+86",
         * "+8613951100653,+86"
         * ]
         * }
         *
         * //返回值参考
         * 200：成功
         * 800：账号被封禁
         * 801：用户不存在
         * 802：用户名或密码错误
         * 803：用户名和密码不能为空
         * 902：传递的参数不正确
         * 903：无效的国家代码
         * 904：无效的项目ID
         * 906：手机号列表为空
         * 403：积分不足
         * 400：失败，系统异常
         * 907：vip_key错误
         */
        return json_decode($result)->data;
    }


    // 获取验证码
    public function getCode($pid, $phone)
    {
        $url = http_build_query([
            'name' => $this->apiName,
            'pwd' => $this->apiPwd,
            'pid' => $pid,
            'pn' => $phone,
            'serial' => 2
        ]);
        $response = $this->client->get('getMsg?' . $url);

        $result = $response->getBody();
        /**
         * {
         * "code": 200,
         * "msg": "Success",
         * "data": "123456"
         * }
         *
         * //返回值参考
         * 200：成功
         * 800：账号被封禁
         * 801：用户不存在
         * 802：用户名或密码错误
         * 803：用户名和密码不能为空
         * 904：无效的项目ID
         * 905：无效的手机号码
         * 908：暂未查询到验证码，请稍后再试
         * 405：验证码获取失败，请查询数据列表，或联系管理员
         */
        return json_decode($result)->data;
    }


    // 释放手机号
    public function setRelease($pid, $phone)
    {
        $url = http_build_query([
            'name' => $this->apiName,
            'pwd' => $this->apiPwd,
            'pid' => $pid,
            'pn' => $phone,
            'serial' => 2
        ]);
        $response = $this->client->get('passMobile?' . $url);

        $result = $response->getBody();
        /**
         * {
         * "code": 200,
         * "msg": "Success",
         * "data": ""
         * }
         *
         * //返回值参考
         * 200：成功
         * 800：账号被封禁
         * 801：用户不存在
         * 802：用户名或密码错误
         * 803：用户名和密码不能为空
         * 401：失败，无效操作
         * 904：无效的项目ID
         * 905：无效的手机号码
         */
        return json_decode($result)->data;
    }


    // 拉黑手机号
    public function setBlack($pid, $phone)
    {
        $url = http_build_query([
            'name' => $this->apiName,
            'pwd' => $this->apiPwd,
            'pid' => $pid,
            'pn' => $phone,
        ]);
        $response = $this->client->get('addBlack?' . $url);
        $result = $response->getBody();
        /**
         * {
         * "code": 200,
         * "msg": "Success",
         * "data": 1
         * }
         *
         * //返回值参考
         * 200：成功
         * 800：账号被封禁
         * 801：用户不存在
         * 802：用户名或密码错误
         * 803：用户名和密码不能为空
         * 400：失败，系统异常
         * 904：无效的项目ID
         * 905：无效的手机号码
         * 912：请勿重复操作
         */
        return json_decode($result)->data;
    }
}
