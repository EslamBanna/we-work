<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\ProjectAttach;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProjectController extends Controller
{
    use GeneralTrait;
    public function dummyData()
    {
        try {
            DB::beginTransaction();
            // mobile
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'type_ar' => 'تطبيق',
                    'type_en' => 'app',
                    'logo' => 'https://product.logo.com',
                    'title_en' => 'Title',
                    'title_ar' => 'عنوان',
                    'description_en' => 'description',
                    'description_ar' => 'وصف',
                    'link1' => 'googleplay.com',
                    'link2' => 'appstore.com',
                ]);
                for ($k = 0; $k < 7; $k++) {
                    ProjectAttach::create([
                        'project_id' => $project_id,
                        'attach' => 'https://product.image.com'
                    ]);
                }
            }

            // wesite
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'type_ar' => 'موقع',
                    'type_en' => 'website',
                    'logo' => 'https://product.logo.com',
                    'title_en' => 'Title',
                    'title_ar' => 'عنوان',
                    'description_en' => 'description',
                    'description_ar' => 'وصف',
                    'link1' => 'website.com',
                ]);
                for ($k = 0; $k < 7; $k++) {
                    ProjectAttach::create([
                        'project_id' => $project_id,
                        'attach' => 'https://product.image.com'
                    ]);
                }
            }

            // ui/ux
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'type_ar' => 'ui/ux',
                    'type_en' => 'ui/ux',
                    'title_en' => 'Title',
                    'title_ar' => 'عنوان',
                    'description_en' => 'description',
                    'description_ar' => 'وصف',
                ]);
                for ($k = 0; $k < 7; $k++) {
                    ProjectAttach::create([
                        'project_id' => $project_id,
                        'attach' => 'https://product.image.com'
                    ]);
                }
            }

            // تصميم داخلي
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'type_ar' => 'تصميم داخلي',
                    'type_en' => 'interior design',
                    'title_en' => 'Title',
                    'title_ar' => 'عنوان',
                    'description_en' => 'description',
                    'description_ar' => 'وصف',
                ]);
                for ($k = 0; $k < 7; $k++) {
                    ProjectAttach::create([
                        'project_id' => $project_id,
                        'attach' => 'https://product.image.com'
                    ]);
                }
            }

            //تصميم خارجي
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'type_ar' => 'تصميم خارجي',
                    'type_en' => 'exterior design',
                    'title_en' => 'Title',
                    'title_ar' => 'عنوان',
                    'description_en' => 'description',
                    'description_ar' => 'وصف',
                ]);
                for ($k = 0; $k < 7; $k++) {
                    ProjectAttach::create([
                        'project_id' => $project_id,
                        'attach' => 'https://product.image.com'
                    ]);
                }
            }
            //تصور سوقي
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'type_ar' => 'تصور سوقي',
                    'type_en' => 'shop drawing',
                    'title_en' => 'Title',
                    'title_ar' => 'عنوان',
                    'description_en' => 'description',
                    'description_ar' => 'وصف',
                ]);
                for ($k = 0; $k < 7; $k++) {
                    ProjectAttach::create([
                        'project_id' => $project_id,
                        'attach' => 'https://product.image.com'
                    ]);
                }
            }
            // تصوير
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'type_ar' => 'تصوير',
                    'type_en' => 'photography',
                    'title_en' => 'Title',
                    'title_ar' => 'عنوان',
                    'description_en' => 'description',
                    'description_ar' => 'وصف',
                ]);
                for ($k = 0; $k < 7; $k++) {
                    ProjectAttach::create([
                        'project_id' => $project_id,
                        'attach' => 'https://product.image.com'
                    ]);
                }
            }

            // رسوم متحركة
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'type_ar' => 'رسوم متحركة',
                    'type_en' => 'motion graphics',
                    'title_en' => 'Title',
                    'title_ar' => 'عنوان',
                    'description_en' => 'description',
                    'description_ar' => 'وصف',
                ]);
                ProjectAttach::create([
                    'project_id' => $project_id,
                    'attach' => 'https://product.video.com'
                ]);
            }
            DB::commit();
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            DB::rollback();
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function allProjects()
    {
        try {
            // $projects = Project::with('attachs')->groupBy('type')->get();
            $projects = [];
            $mobile_projects = Project::with('image:project_id,attach')
                ->select('id')
                ->where('type_en', 'app')
                ->where('selected', 1)
                ->get();

            $website_projects = Project::with('image:project_id,attach')
                ->select('id')
                ->where('type_en', 'website')
                ->where('selected', 1)
                ->get();

            $ui_ux_projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar')
                ->where('type_en', 'ui/ux')
                ->get();
            // 
            $interior_design_projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar')
                ->where('type_en', 'interior design')
                ->get();

            $exterior_design_projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar')
                ->where('type_en', 'exterior design')
                ->get();
            $shop_drawing_projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar')
                ->where('type_en', 'shop drawing')
                ->get();

            $photography_projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar')
                ->where('type_en', 'photography')
                ->get();
            $motion_graphics_projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar')
                ->where('type_en', 'motion graphics')
                ->get();
            $projects['mobile_projects'] = $mobile_projects;
            $projects['website_projects'] = $website_projects;
            $projects['ui_ux_projects'] = $ui_ux_projects;
            $projects['interior_design_projects'] = $interior_design_projects;
            $projects['exterior_design_projects'] = $exterior_design_projects;
            $projects['shop_drawing_projects'] = $shop_drawing_projects;
            $projects['photography_projects'] = $photography_projects;
            $projects['motion_graphics_projects'] = $motion_graphics_projects;
            return $this->returnData('data', $projects);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
