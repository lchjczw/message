<?php

namespace App\Utils;


class ErrorCodes extends RequestError
{
    public function checkExist($errorCode)
    {
        return array_key_exists($errorCode, $this->errorCodes);
    }
}
