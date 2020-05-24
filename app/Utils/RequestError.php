<?php

namespace App\Utils;
use Exception;

class RequestError extends Exception
{
    private $responseCode;
    protected $errorCodes = array(
        'NO_NUMBERS' => '没有空余号码接收当前服务的短信',
        'NO_BALANCE' => 'Закончился баланс',
        'BAD_ACTION' => '无效的动作（动作参数）',
        'BAD_SERVICE' => '服务名称无效（服务参数）',
        'BAD_KEY' => '无效的API密钥',
        'ERROR_SQL' => '一个参数是无效的',
        'SQL_ERROR' => 'Один из параметров имеет недопустимое значение',
        'NO_ACTIVATION' => 'Указанного id активации не существует',
        'BAD_STATUS' => '试图确定不存在的状态',
        'STATUS_CANCEL' => '当前激活取消，不再可用',
        'BANNED' => '账户冻结',
        'NO_CONNECTION' => '没有连接到服务器',
        'ACCOUNT_INACTIVE' => 'Свободных номеров нет',
        'NO_ID_RENT' => '没有指定的租赁ID',
        'INVALID_PHONE' => 'Номер арендован не вами (неправильный id аренды)',
        'STATUS_FINISH' => 'Аренда оплачна и завершена',
        'STATUS_CANCEL' => 'Аренда отменена с возвратом денег',
        'STATUS_WAIT_CODE' => 'Ожидание первой смс',
        'INCORECT_STATUS' => 'Отсутствует или неправильно указан статус',
        'CANT_CANCEL' => 'Невозможно отменить аренду (прошло более 20 мин.)',
        'ALREADY_FINISH' => 'Аренда уже завершена',
        'ALREADY_CANCEL' => 'Аренда уже отменена',

    );

    public function __construct($errorCode)
    {
        $this->responseCode = $errorCode;
        $message = "Error in {$this->getFile()}, line: {$this->getLine()}: {$this->errorCodes[$errorCode]}";
        parent::__construct($message);
    }

    public function getResponseCode()
    {
        return $this->responseCode;
    }


}
