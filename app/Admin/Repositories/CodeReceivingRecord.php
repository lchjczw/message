<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\CodeReceivingRecord as CodeReceivingRecordModel;

class CodeReceivingRecord extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = CodeReceivingRecordModel::class;
}
