<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\User as UserModel;

class User extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = UserModel::class;
}
