<?php

namespace App\Utils;
class RequestError extends Exception
{
    private $responseCode;
    protected $errorCodes = array(
        'NO_NUMBERS' => 'Нет свободных номеров для приёма смс от текущего сервиса',
        'NO_BALANCE' => 'Закончился баланс',
        'BAD_ACTION' => 'Некорректное действие (параметр action)',
        'BAD_SERVICE' => 'Некорректное наименование сервиса (параметр service)',
        'BAD_KEY' => 'Неверный API ключ доступа',
        'ERROR_SQL' => 'Один из параметров имеет недопустимое значение',
        'SQL_ERROR' => 'Один из параметров имеет недопустимое значение',
        'NO_ACTIVATION' => 'Указанного id активации не существует',
        'BAD_STATUS' => 'Попытка установить несуществующий статус',
        'STATUS_CANCEL' => 'Текущая активация отменена и больше не доступна',
        'BANNED' => 'Аккаунт заблокирован',
        'NO_CONNECTION' => 'Нет соединения с серверами sms-activate',
        'ACCOUNT_INACTIVE' => 'Свободных номеров нет',
        'NO_ID_RENT' => 'Не указан id аренды',
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
