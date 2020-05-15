<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\RechargeDetails as RechargeDetailModel;

class RechargeDetail extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = RechargeDetailModel::class;
}
