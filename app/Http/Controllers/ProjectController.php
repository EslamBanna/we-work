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

    public function createProject(Request $request)
    {
        try {
            DB::beginTransaction();
            $validate = Validator::make($request->all(), [
                'sub_category_id' => 'required|exists:project_sub_categories,id',
                'title_en' => 'required',
                'title_ar' => 'required',
                'description_en' => 'required',
                'description_ar' => 'required',
                // 'attach' => 'required',
            ]);
            if ($validate->fails()) {
                return $this->returnError(201, $validate->errors()->first());
            }
            $logo = "";
            if ($request->hasFile('logo')) {
                $logo = $this->saveImage($request->file('logo'), 'projects_logo');
            }
            $project_id = Project::insertGetId([
                'sub_category_id' => $request->sub_category_id,
                'title_en' => $request->title_en,
                'title_ar' => $request->title_ar,
                'description_en' => $request->description_en,
                'description_ar' => $request->description_ar,
                'link1' => $request->link1,
                'link2' => $request->link2,
                'video' => $request->video,
                'logo' => $logo
            ]);
            if(isset($request->attach)){
                foreach ($request->attach as $attach) {
                    $file = $this->saveImage($attach, 'projects');
                    ProjectAttach::create([
                        'project_id' => $project_id,
                        'attach' => $file
                    ]);
                }
            }
     
            DB::commit();
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            DB::rollBack();
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function updateProject($id, Request $request)
    {
        try {
            // return $request;
            DB::beginTransaction();
            $validate = Validator::make($request->all(), [
                'title_en' => 'required',
                'title_ar' => 'required',
                'description_en' => 'required',
                'description_ar' => 'required',
            ]);
            if ($validate->fails()) {
                return $this->returnError(201, $validate->errors()->first());
            }
            $project = Project::find($id);
            if (!$project) {
                return $this->returnError(201, 'project not found');
            }
            $link_len = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/projects_logo/');
            $logo = substr($project->logo, $link_len);
            if ($request->hasFile('logo')) {
                // if ($logo != "" || $logo != null) {
                //     unlink('images/projects_logo/' . $logo);
                // }
                $logo = $this->saveImage($request->file('logo'), 'projects_logo');
            }
            $project->update([
                'title_en' => $request->title_en ?? $project->title_en,
                'title_ar' => $request->title_ar ?? $project->title_ar,
                'description_en' => $request->description_en ?? $project->description_en,
                'description_ar' => $request->description_ar ?? $project->description_ar,
                'link1' => $request->link1 ?? $project->link1,
                'link2' => $request->link2 ?? $project->link2,
                'video' => $request->video ?? $project->video,
                'logo' => $logo
            ]);
            if (isset($request->attach)) {
                foreach ($request->attach as $attach) {
                    $file = $this->saveImage($attach, 'projects');
                    ProjectAttach::create([
                        'project_id' => $project['id'],
                        'attach' => $file
                    ]);
                }
            }
            if (isset($request->deleted_attaches)) {
                foreach ($request->deleted_attaches as $attach) {
                    $attach = ProjectAttach::find($attach);
                    if ($attach) {
                        $link_len = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/projects/');
                        $old_attach = substr($attach->attach, $link_len);
                        // unlink('images/projects/' . $old_attach);
                        $attach->delete();
                    }
                }
            }

            DB::commit();
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            DB::rollBack();
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function deleteProject($id)
    {
        try {
            DB::beginTransaction();
            $project = Project::find($id);
            if (!$project) {
                return $this->returnError(201, 'project not found');
            }
            $project->delete();
            DB::commit();
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            DB::rollBack();
            return $this->returnError(201, $e->getMessage());
        }
    }
    public function getProjects($sub_category_id)
    {
        try {
            $check_sub_category = ProjectSubCategory::find($sub_category_id);
            if (!$check_sub_category) {
                return $this->returnError(201, 'sub category not found');
            }
            $data['category'] = $check_sub_category;
            $data['projects'] = Project::with('image')
                ->where('sub_category_id', $sub_category_id)
                ->get();
            return $this->returnData('data', $data);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getProject($project_id)
    {
        try {
            $check_project = Project::with('attachs')->find($project_id);
            if (!$check_project) {
                return $this->returnError(201, 'project not found');
            }
            $catgegory = ProjectSubCategory::find($check_project->sub_category_id);
            $data['project_sub_category'] = $catgegory['sub_category_name_en'];
            $data['project_sub_category_ar'] = $catgegory['sub_category_name_ar'];
            $data['project'] = $check_project;
            // if ($catgegory->sub_category_name_en == 'mobile application') {
            //     $data['project']['google_play'] = $data['project']['link1'];
            //     $data['project']['app_store'] = $data['project']['link2'];
            //     unset($data['project']['link1']);
            //     unset($data['project']['link2']);
            // } else if ($catgegory->sub_category_name_en == 'website') {
            //     $data['project']['web_link'] = $data['project']['link1'];
            //     unset($data['project']['link1']);
            //     unset($data['project']['link2']);
            //     unset($data['project']['logo']);
            // } else {
            //     unset($data['project']['logo']);
            //     unset($data['project']['link1']);
            //     unset($data['project']['link2']);
            // }
            return $this->returnData('data', $data);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    // old
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
    // old
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

    // old
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

    // old
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

    // old
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

    // old
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

    // old
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

    // old
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


    // old
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

    // old
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
