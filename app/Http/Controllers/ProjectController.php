<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\ProjectAttach;
use App\Models\ProjectCategory;
use App\Models\ProjectSubCategory;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ProjectController extends Controller
{
    use GeneralTrait;

    public function createMainCategory(Request $request)
    {
        try {
            $validata = Validator::make($request->all(), [
                'category_name_en' => 'required|string|max:255',
                'category_name_ar' => 'required|string|max:255'
            ]);
            if ($validata->fails()) {
                return $this->returnError(202, $validata->errors()->first());
            }
            ProjectCategory::create([
                'category_name_en' => $request->category_name_en,
                'category_name_ar' => $request->category_name_ar
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function dummyDataForProjects()
    {
        try {
            DB::beginTransaction();
            // mobile
            $project_category_id = ProjectCategory::insertGetId([
                'category_name_en' => 'software engineer',
                'category_name_ar' => 'هندسة البرمجيات'
            ]);

            $project_sub_category_id = ProjectSubCategory::insertGetId([
                'category_id' => $project_category_id,
                'sub_category_name_en' => 'mobile application',
                'Sub_category_name_ar' => 'تطبيق موبايل'
            ]);
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'sub_category_id' => $project_sub_category_id,
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

            $project_sub_category_id = ProjectSubCategory::insertGetId([
                'category_id' => $project_category_id,
                'sub_category_name_en' => 'website',
                'Sub_category_name_ar' => 'موقع الكتروني'
            ]);

            // wesite
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'sub_category_id' => $project_sub_category_id,
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

            $project_sub_category_id = ProjectSubCategory::insertGetId([
                'category_id' => $project_category_id,
                'sub_category_name_en' => 'ui/ux',
                'Sub_category_name_ar' => 'ui/ux'
            ]);

            // ui/ux
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'sub_category_id' => $project_sub_category_id,
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

            $project_category_id = ProjectCategory::insertGetId([
                'category_name_en' => 'decoration',
                'category_name_ar' => 'التصميم'
            ]);

            $project_sub_category_id = ProjectSubCategory::insertGetId([
                'category_id' => $project_category_id,
                'sub_category_name_en' => 'interior design',
                'Sub_category_name_ar' => 'تصميم داخلي'
            ]);
            // تصميم داخلي
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'sub_category_id' => $project_sub_category_id,
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

            $project_sub_category_id = ProjectSubCategory::insertGetId([
                'category_id' => $project_category_id,
                'sub_category_name_en' => 'exterior design',
                'Sub_category_name_ar' => 'تصميم خارجي'
            ]);
            //تصميم خارجي
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'sub_category_id' => $project_sub_category_id,
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

            $project_sub_category_id = ProjectSubCategory::insertGetId([
                'category_id' => $project_category_id,
                'sub_category_name_en' => 'shop drawing',
                'Sub_category_name_ar' => 'تصور سوقي'
            ]);
            //تصور سوقي
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'sub_category_id' => $project_sub_category_id,
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


            $project_category_id = ProjectCategory::insertGetId([
                'category_name_en' => 'marketing',
                'category_name_ar' => 'تسويق'
            ]);

            $project_sub_category_id = ProjectSubCategory::insertGetId([
                'category_id' => $project_category_id,
                'sub_category_name_en' => 'photography',
                'Sub_category_name_ar' => 'تصوير'
            ]);
            // تصوير
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'sub_category_id' => $project_sub_category_id,
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

            $project_sub_category_id = ProjectSubCategory::insertGetId([
                'category_id' => $project_category_id,
                'sub_category_name_en' => 'motion graphics',
                'Sub_category_name_ar' => 'رسوم متحركة'
            ]);
            // رسوم متحركة
            for ($i = 0; $i < 5; $i++) {
                $project_id = Project::insertGetId([
                    'sub_category_id' => $project_sub_category_id,
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
            $lastRecordDate = Project::all('updated_at')->max('updated_at')->toArray();
            $projects = [];
            $projects['last_update'] = $lastRecordDate['formatted'];
            $projects_categoryes = ProjectCategory::select('id', 'category_name_en')
                ->get();
            foreach ($projects_categoryes as $project_category) {
                $projects_sub_categoryes = ProjectSubCategory::select('id', 'sub_category_name_en', 'sub_category_name_ar')
                    ->where('category_id', $project_category['id'])
                    ->get();
                if ($project_category['category_name_en'] == 'software engineer') {
                    foreach ($projects_sub_categoryes as $project_sub_category) {
                        $software_engineer_projects = Project::with('image:project_id,attach')
                            ->select('id')
                            ->where('sub_category_id', $project_sub_category['id'])
                            ->where('selected', 1)
                            ->get();
                        $projects[$project_sub_category['sub_category_name_en']] = $software_engineer_projects;
                        $projects[$project_sub_category['sub_category_name_en']]['category_ar_name'] = $project_sub_category['sub_category_name_ar'];
                    }
                } else {
                    foreach ($projects_sub_categoryes as $project_sub_category) {
                        $sub_category_projects = Project::with('image:project_id,attach')
                            ->select('id', 'title_en', 'title_ar')
                            ->where('sub_category_id', $project_sub_category['id'])
                            ->get();
                        $projects[$project_sub_category['sub_category_name_en']] = $sub_category_projects;
                        $projects[$project_sub_category['sub_category_name_en']]['category_ar_name'] = $project_sub_category['sub_category_name_ar'];
                    }
                }
            }

            return $this->returnData('data', $projects);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getAllMobileProjects()
    {
        try {
            $mobile_sub_category_id = ProjectSubCategory::select('id')
                ->where('sub_category_name_en', 'mobile application')
                ->first();
            if (!$mobile_sub_category_id) {
                return $this->returnError('202', 'this category not founded');
            }
            $projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar', 'description_en', 'description_ar', 'link1 as google_play', 'link2 as app_store')
                ->where('sub_category_id', $mobile_sub_category_id['id'])
                ->get();

            $lastRecordDate = Project::where('sub_category_id', $mobile_sub_category_id['id'])
                ->select('updated_at')
                ->orderBy('updated_at', 'desc')
                ->first();
            $data['lastRecordDate'] = $lastRecordDate['updated_at'];
            $data['projects'] = $projects;
            return $this->returnData('data', $data);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function discoverMoreApps()
    {
        try {
            $mobile_sub_category_id = ProjectSubCategory::select('id')
                ->where('sub_category_name_en', 'mobile application')
                ->first();
            if (!$mobile_sub_category_id) {
                return $this->returnError('202', 'this category not founded');
            }

            $projects = Project::select('id', 'logo', 'title_en', 'title_ar')
                ->where('sub_category_id', $mobile_sub_category_id['id'])
                ->latest()
                ->get();
            return $this->returnData('data', $projects);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getAppInfo($id)
    {
        try {
            $mobile_sub_category_id = ProjectSubCategory::select('id')
                ->where('sub_category_name_en', 'mobile application')
                ->first();
            if (!$mobile_sub_category_id) {
                return $this->returnError('202', 'this category not founded');
            }
            $app = Project::with('attachs:project_id,attach')
                ->select(
                    'sub_category_id',
                    'id',
                    'logo',
                    'title_en',
                    'title_ar',
                    'description_en',
                    'description_ar',
                    'link1 as google_play',
                    'link2 as app_store',
                    'updated_at'
                )->find($id);

            if (!$app) {
                return $this->returnError(202, 'this app is not exist');
            }
            if ($app['sub_category_id'] != $mobile_sub_category_id['id']) {
                return $this->returnError(202, 'this is not app !!');
            }
            return $this->returnData('data', $app);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getAllWebsiteProjects()
    {
        try {
            $website_sub_category_id = ProjectSubCategory::select('id')
                ->where('sub_category_name_en', 'website')
                ->first();
            if (!$website_sub_category_id) {
                return $this->returnError('202', 'this category not founded');
            }
            $projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar', 'description_en', 'description_ar')
                ->where('sub_category_id', $website_sub_category_id['id'])
                ->get();
            $lastRecordDate = Project::where('sub_category_id', $website_sub_category_id['id'])
                ->select('updated_at')
                ->orderBy('updated_at', 'desc')
                ->first();
            $data['lastRecordDate'] = $lastRecordDate['updated_at'];
            $data['projects'] = $projects;
            return $this->returnData('data', $data);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getWebsiteInfo($id)
    {
        try {
            $website_sub_category_id = ProjectSubCategory::select('id')
                ->where('sub_category_name_en', 'website')
                ->first();
            if (!$website_sub_category_id) {
                return $this->returnError('202', 'this category not founded');
            }
            $website = Project::with('attachs:project_id,attach')
                ->select(
                    'sub_category_id',
                    'id',
                    'logo',
                    'title_en',
                    'title_ar',
                    'description_en',
                    'description_ar',
                    'link1 as website_link',
                    'updated_at'
                )->find($id);

            if (!$website) {
                return $this->returnError(202, 'this website is not exist');
            }

            if ($website['sub_category_id'] != $website_sub_category_id['id']) {
                return $this->returnError(202, 'this is not website');
            }
            return $this->returnData('data', $website);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getProjectsWithType($type)
    {
        try {
            if ($type == 'ui-ux') {
                $type = 'ui/ux';
            } else {
                $type = str_replace('-', ' ', $type);
            }
            $sub_category_id = ProjectSubCategory::select('id')
                ->where('sub_category_name_en', $type)
                ->first();
            if (!$sub_category_id) {
                return $this->returnError('202', 'this category not founded');
            }
            $projects = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar')
                ->where('sub_category_id', $sub_category_id['id'])
                ->get();
            $lastRecordDate = Project::where('sub_category_id', $sub_category_id['id'])
                ->select('updated_at')
                ->orderBy('updated_at', 'desc')
                ->first();
            $data['lastRecordDate'] = $lastRecordDate['updated_at'];
            $data['projects'] = $projects;
            return $this->returnData('data', $data);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getProjectInfo($id)
    {
        try {
            $project = Project::with('attachs:project_id,attach')
                ->select(
                    'id',
                    'sub_category_id',
                    'title_en',
                    'title_ar',
                    'description_en',
                    'description_ar',
                    'updated_at'
                )->find($id);

            if (!$project) {
                return $this->returnError(202, 'this project is not exist');
            }
            return $this->returnData('data', $project);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }


    public function getMotionGraphicsProjects()
    {
        try {
            $sub_category_id = ProjectSubCategory::select('id')
                ->where('sub_category_name_en', 'motion graphics')
                ->first();
            if (!$sub_category_id) {
                return $this->returnError('202', 'this category not founded');
            }
            $motion_graphics = Project::with('image:project_id,attach')
                ->select('id', 'title_en', 'title_ar', 'description_en', 'description_ar')
                ->where('sub_category_id', $sub_category_id['id'])
                ->get();
            $lastRecordDate = Project::where('sub_category_id', $sub_category_id['id'])
                ->select('updated_at')
                ->orderBy('updated_at', 'desc')
                ->first();
            $data['lastRecordDate'] = $lastRecordDate['updated_at'];
            $data['projects'] = $motion_graphics;
            return $this->returnData('data', $data);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getMotionGraphicInfo($id)
    {
        try {
            $sub_category_id = ProjectSubCategory::select('id')
                ->where('sub_category_name_en', 'motion graphics')
                ->first();
            $motion_graphic = Project::with('attachs:project_id,attach')
                ->select(
                    'id',
                    'sub_category_id',
                    'title_en',
                    'title_ar',
                    'description_en',
                    'description_ar',
                    'updated_at'
                )->find($id);

            if (!$motion_graphic) {
                return $this->returnError(202, 'this motion graphic is not exist');
            }

            if ($motion_graphic['sub_category_id'] != $sub_category_id['id']) {
                return $this->returnError(202, 'this is not motion graphic');
            }
            return $this->returnData('data', $motion_graphic);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
