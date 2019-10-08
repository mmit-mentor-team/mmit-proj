<?php
namespace App;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;
use Laravel\Passport\HasApiTokens;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class User extends Authenticatable
{
    use Notifiable,HasApiTokens;
    use HasRoles;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'role_id', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function roles()
    {
        return $this->belongsToMany('Spatie\Permission\Models\Role', 'model_has_roles','model_id');
    }

    public function permissions()
    {
        return $this->belongsToMany('Spatie\Permission\Models\Permission', 'model_has_permissions','model_id');
    }

    public function staff()
    {
        return $this->hasOne('App\Model\Staff');
    }

    public function cities()
    {
        return $this->hasMany('App\Model\City');
    }

    public function companies()
    {
        return $this->hasMany('App\Model\Company');
    }

    public function courses()
    {
        return $this->hasMany('App\Model\Course');
    }

    public function dismisses()
    {
        return $this->hasMany('App\Model\Dismiss');
    }

    public function durations()
    {
        return $this->hasMany('App\Model\Duration');
    }

    public function expenses()
    {
        return $this->hasMany('App\Model\Duration');
    }

    public function hires()
    {
        return $this->hasMany('App\Model\Hire');
    }

    public function incomes()
    {
        return $this->hasMany('App\Model\Income');
    }

    public function inquires()
    {
        return $this->hasMany('App\Model\Inquire');
    }

    public function interviews()
    {
        return $this->hasMany('App\Model\Interview');
    }

    public function jobcareers()
    {
        return $this->hasMany('App\Model\Jobcareer');
    }

    public function locations()
    {
        return $this->belongsTo('App\Model\Location');
    }

    public function positions()
    {
        return $this->belongsTo('App\Model\Positions');
    }

    public function sections()
    {
        return $this->belongsTo('App\Model\Section');
    }

    public function students()
    {
        return $this->belongsTo('App\Model\Student');
    }

    public function teachers()
    {
        return $this->belongsTo('App\Model\Teacher');
    }

    public function townships()
    {
        return $this->belongsTo('App\Model\Township');
    }

    public function educations()
    {
        return $this->belongsTo('App\Model\Education');
    }

}
