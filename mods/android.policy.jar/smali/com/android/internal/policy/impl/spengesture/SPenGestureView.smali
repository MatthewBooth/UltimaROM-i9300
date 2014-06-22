.class public Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.super Landroid/widget/FrameLayout;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field private static final DEBUG:Z = false

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE_FOR_ANIMATION:Ljava/lang/String; = "%s/%s/tmp%s"

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field private static final TAG:Ljava/lang/String; = "SPenGesture"

.field private static final TEMP_CROP_IMAGE_FILE_PATH:Ljava/lang/String; = "/data/easyclip/crop_image.png"

.field private static final TEMP_CROP_IMAGE_FILE_PATH_FOR_ANIM:Ljava/lang/String; = "/data/easyclip/crop_image_anim.png"

.field private static final TEMP_CROP_IMAGE_PATH:Ljava/lang/String; = "/data/easyclip"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_SHOW_DRM_MESSAGE:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private final mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private final mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFinishSaveImg:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEffectImgView:Landroid/widget/ImageView;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageFilePathForAnimation:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsClosedCurve:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsShowingGestureEffect:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoadingAniImgView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

.field private mMedianValueForGesturePosX:I

.field private mMedianValueForGesturePosY:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private final mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field mToastHandler:Landroid/os/Handler;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mToastHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBootCompleted:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenCaptureOn:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.sec.android.gesturepad"

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_STROKE_WIDTH:I

    const/16 v9, 0x320

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    const/16 v9, 0x500

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    const/16 v9, 0x8

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_START_CIRCLE_RADIUS:I

    const/4 v9, 0x4

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_END_CIRCLE_RADIUS:I

    const/16 v9, 0x14

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    const/16 v9, 0xa

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CROPIMAGE_MARGIN:I

    const/4 v9, 0x1

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_START_LOADING_ANIMATION:S

    const/4 v9, 0x2

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_FINISH_LOADING_ANIMATION:S

    const/4 v9, 0x3

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_SHOW_DRM_MESSAGE:S

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_NONE:I

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PLAY:I

    const/16 v9, 0x32

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    const/16 v9, 0x320

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    const/16 v9, 0x4b0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    new-instance v9, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v9}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosX:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosY:I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    const/4 v9, 0x0

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_SUGGESTION_SERVICE_START:S

    const/4 v9, 0x1

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_CROPPING_IMG_SAVE:S

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mToastHandler:Landroid/os/Handler;

    new-instance v9, Landroid/app/Instrumentation;

    invoke-direct {v9}, Landroid/app/Instrumentation;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "keyguard"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v9, "phone2"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    :try_start_0
    invoke-interface {v8}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v10, "com.sec.spen.flashannotatesvc"

    const-string v11, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v10, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.diotek.mini_penmemo"

    const-string v12, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v10, "com.sec.android.gesturepad"

    const-string v11, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v10, 0x1400

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v9, Landroid/view/GestureDetector;

    new-instance v10, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-direct {v9, p1, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDirectionHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVC:Landroid/view/ViewConfiguration;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v9, :cond_2

    iget v9, v5, Landroid/graphics/Point;->x:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    const-string v9, "SPenGesture"

    const-string v10, "Initialized to portrait"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    iget v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    new-instance v10, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    iget v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    iget v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-direct {v10, v11, v12, v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;-><init>(IIZ)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x4000

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, -0x100

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x4040

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, -0x100

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v6, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct {v6}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    return-void

    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v9, "SPenGesture"

    const-string v10, "RemoteException"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    goto/16 :goto_1

    :cond_2
    iget v9, v5, Landroid/graphics/Point;->y:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iget v9, v5, Landroid/graphics/Point;->x:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    const-string v9, "SPenGesture"

    const-string v10, "Initialized to Landscape"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_3

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 14

    const/high16 v13, 0x4000

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v7, "SPenGesture"

    const-string v8, "MDM: Screen Capture Disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v6

    :cond_0
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v9, 0x2

    new-array v2, v9, [F

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    aput v9, v2, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    aput v9, v2, v7

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    cmpl-float v9, v1, v12

    if-lez v9, :cond_4

    move v3, v7

    :goto_1
    if-eqz v3, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v9, v2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v2, v8

    aget v9, v2, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v2, v7

    :cond_1
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v2, v7

    float-to-int v10, v10

    invoke-static {v9, v10}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_2

    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v2, v7

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_2
    if-eqz v3, :cond_3

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    aget v8, v2, v8

    neg-float v8, v8

    div-float/2addr v8, v13

    aget v7, v2, v7

    neg-float v7, v7

    div-float/2addr v7, v13

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_4
    move v3, v8

    goto/16 :goto_1
.end method

.method private SaveImage()Z
    .locals 13

    const-string v9, "SPenGesture"

    const-string v10, "SaveImage"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v9, "Screenshot_%s.png"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/easyclip"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "SPenGesture"

    const-string v10, "Dir creation failed!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_1
    const-string v9, "%s/%s/%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v9, "/data/easyclip/crop_image.png"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v9, "%s/%s/tmp%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v9, "/data/easyclip/crop_image_anim.png"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    const/4 v9, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v9, "SPenGesture"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SaveImage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v9, "SPenGesture"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SaveImage : anim / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->sendKeyDownUpSync(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$4502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$4602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return v0
.end method

.method static synthetic access$5202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return p1
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return v0
.end method

.method static synthetic access$5302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->SaveImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    return p1
.end method

.method private checkClosedCurve(III)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    add-int v3, p2, v1

    if-ltz v3, :cond_0

    if-ltz p1, :cond_0

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    :cond_0
    if-eq v2, v5, :cond_8

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_8

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_7

    :cond_1
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    :cond_2
    :goto_2
    const/16 v0, 0xc

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x18

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p2, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x18

    if-ge v3, p2, :cond_4

    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    if-ne v3, v6, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p2, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p2, :cond_6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_d

    :cond_5
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    :goto_3
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    :cond_6
    return-void

    :cond_7
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_1

    :cond_8
    sub-int v3, p2, v1

    if-ltz v3, :cond_9

    if-ltz p1, :cond_9

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_9

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    :cond_9
    if-eq v2, v5, :cond_c

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_c

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_b

    :cond_a
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    :goto_4
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    goto/16 :goto_2

    :cond_b
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_4

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_3
.end method

.method private checkDirectionGesture()Z
    .locals 31

    const-string v25, "SPenGesture"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-nez v25, :cond_2

    :cond_0
    const/16 v18, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    mul-float v26, v26, v18

    sub-float v9, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v20

    const/4 v8, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v23, v25, v8

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v24, v25, v8

    mul-float v25, v18, v23

    const/high16 v26, -0x4080

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, -0x4010

    const-wide/high16 v29, 0x4000

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v17, v0

    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    if-ge v6, v5, :cond_1

    move v6, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v18, v25, v26

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    :goto_4
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v6, v0, :cond_5

    const/16 v25, 0x320

    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v7, v0, :cond_5

    const/16 v25, 0x4b0

    move/from16 v0, v25

    if-ge v7, v0, :cond_5

    const/high16 v25, 0x3f80

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_c

    const/high16 v25, -0x4080

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_c

    move/from16 v0, v21

    if-gt v10, v0, :cond_8

    :cond_5
    const/16 v25, 0x0

    :goto_5
    return v25

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    goto :goto_4

    :cond_8
    move/from16 v0, v21

    if-le v12, v0, :cond_a

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_9

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    :cond_9
    const/16 v25, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_b

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    :cond_b
    const/16 v25, 0x1

    goto :goto_5

    :cond_c
    move/from16 v0, v22

    if-le v11, v0, :cond_5

    move/from16 v0, v22

    if-le v13, v0, :cond_e

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_d

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_f

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_5
.end method

.method private checkDownGesture()V
    .locals 19

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x4420

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x4420

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-le v6, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4396

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4396

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4448

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4448

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v2
.end method

.method private injectionKeyEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isAvailableCapacity()Z
    .locals 15

    const-string v13, "SPenGesture"

    const-string v14, "isAvailableCapacity"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v9, v13

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v0, v13

    mul-long v11, v9, v4

    mul-long v2, v0, v4

    const-wide/16 v13, 0x2800

    cmp-long v13, v2, v13

    if-gez v13, :cond_0

    const v13, 0x10401c1

    invoke-direct {p0, v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->showToast(I)V

    const/4 v13, 0x0

    :goto_0
    return v13

    :catch_0
    move-exception v6

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private isLockScreenShowing()Z
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SPenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPossibleCapture()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "SPenGesture"

    const-string v3, "StatusBarService RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SPenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "SPenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    :cond_0
    float-to-int v10, p1

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    move/from16 v0, p2

    float-to-int v10, v0

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v11, p3, p1

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v12, p4, p2

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    cmpl-float v10, p1, p3

    if-nez v10, :cond_2

    cmpl-float v10, p2, p4

    if-eqz v10, :cond_11

    :cond_2
    move v8, p1

    move/from16 v9, p2

    move/from16 v1, p3

    move/from16 v2, p4

    sub-float v10, v8, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    sub-float v10, v2, v9

    sub-float v11, v1, v8

    div-float v7, v10, v11

    :goto_0
    mul-float v10, v8, v7

    sub-float v4, v9, v10

    cmpg-float v10, p1, p3

    if-gtz v10, :cond_c

    :goto_1
    cmpg-float v10, v8, v1

    if-gtz v10, :cond_11

    move v5, v8

    mul-float v10, v8, v7

    add-float v6, v10, v4

    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    :cond_3
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    const/4 v3, 0x1

    :goto_2
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    const/4 v3, 0x1

    :goto_3
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_8

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_7

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_7

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_7

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    float-to-int v10, v6

    if-ltz v10, :cond_9

    float-to-int v10, v5

    if-ltz v10, :cond_9

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_9

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_9

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    :cond_9
    const/high16 v10, 0x3f80

    add-float/2addr v8, v10

    goto/16 :goto_1

    :cond_a
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    float-to-int v10, v6

    if-ltz v10, :cond_b

    float-to-int v10, v5

    if-ltz v10, :cond_b

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_b

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    :cond_b
    const/high16 v10, 0x3f80

    sub-float/2addr v8, v10

    :cond_c
    cmpl-float v10, v8, v1

    if-ltz v10, :cond_11

    move v5, v8

    mul-float v10, v8, v7

    add-float v6, v10, v4

    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    :cond_d
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_f

    const/4 v3, 0x1

    :goto_4
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_f

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_e

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_e

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_e

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_e

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    const/4 v3, 0x1

    :goto_5
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_10

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_10

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_10

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_10

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method private sendKeyDownUpSync(II)V
    .locals 3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent;->setSource(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent;->setSource(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SuggestionService.SuggestionAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    goto :goto_0
.end method

.method private setDisplayDegrees()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-le v4, v7, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    :goto_0
    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    const-string v4, "SPenGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentDisplayWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentDisplayHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Rot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x4334

    cmpl-float v4, v1, v4

    if-nez v4, :cond_5

    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-ne v4, v5, :cond_4

    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->setPortrait(Z)V

    :cond_1
    return v0

    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    goto :goto_1

    :cond_4
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_6

    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_2

    :cond_7
    move v4, v6

    goto :goto_3
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startAniForLoadingService()V
    .locals 12

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;->playVibrator()V

    return-void
.end method

.method private startEffectForGesture(IZ)V
    .locals 8

    const-wide/16 v6, 0xc8

    const/high16 v5, 0x4110

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-eqz v0, :cond_2

    const-string v0, "SPenGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " couldn\'t execute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4204

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->IsKnoxRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IsKnoxRunning()Z
    .locals 3

    const-string v0, "true"

    const-string v1, "dev.knoxapp.running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 26

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    if-nez v2, :cond_2c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    const/16 v2, 0x9

    if-eq v8, v2, :cond_1a

    const/4 v2, 0x7

    if-eq v8, v2, :cond_1a

    const/16 v2, 0xa

    if-eq v8, v2, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    monitor-exit v25

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v8, :cond_2

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->updateRotation()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setAboutStartingSuggestionService()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_3

    monitor-exit v25

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_4

    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    monitor-exit v25

    goto :goto_0

    :cond_4
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v15, v2, 0x8

    if-nez v8, :cond_6

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    if-ge v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    :goto_2
    move/from16 v0, v21

    if-gt v0, v14, :cond_8

    new-instance v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    const/4 v2, 0x1

    move-object/from16 v0, v19

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_c

    monitor-exit v25

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_d

    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    monitor-exit v25

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_14

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v10, :cond_13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    :goto_5
    if-eqz v19, :cond_12

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v9}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    if-eqz v19, :cond_10

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_f

    :cond_e
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_f
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_11
    const/16 v19, 0x0

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_6

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_14
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v10, :cond_1a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    :goto_8
    if-eqz v19, :cond_19

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-eqz v19, :cond_17

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    :cond_15
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v6, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    iget v7, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v19

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;I)I

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    :cond_1b
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1c

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_24

    :cond_1c
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_2a

    const/16 v18, 0x0

    :goto_a
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v22

    const/4 v13, 0x0

    :goto_b
    move/from16 v0, v22

    if-ge v13, v0, :cond_1e

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v23, v2, v13

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    if-nez v2, :cond_1d

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_1d
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->markMatrixForCropping(FFFFI)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    goto :goto_c

    :cond_1e
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_21

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-nez v2, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkDirectionGesture()Z

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "SPenGesture"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    :cond_23
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    :cond_24
    const/4 v2, 0x3

    if-ne v8, v2, :cond_25

    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    :cond_25
    const/16 v2, 0xa

    if-ne v8, v2, :cond_26

    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-eqz v2, :cond_27

    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "SPenGesture"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    :goto_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    :cond_27
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    packed-switch v2, :pswitch_data_0

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_29
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    goto/16 :goto_d

    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    goto/16 :goto_e

    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    :pswitch_2
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    :pswitch_3
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    :cond_2c
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .locals 21

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v14

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_4

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v15, v17, v5

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v16, v17, v5

    move/from16 v0, p1

    if-gt v0, v8, :cond_0

    add-int/lit8 v17, p2, 0x1

    move/from16 v0, v17

    if-lt v0, v8, :cond_0

    if-nez v4, :cond_2

    move v9, v15

    move/from16 v10, v16

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    :goto_2
    const/4 v4, 0x1

    :cond_0
    :goto_3
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    goto :goto_2

    :cond_2
    move v6, v15

    move/from16 v7, v16

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_4
    move v9, v15

    move/from16 v10, v16

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :goto_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4220

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4220

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    const/16 v17, 0x0

    :goto_6
    return v17

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_5

    :cond_7
    const/16 v17, 0x1

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, -0x4080

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v2, 0x4100

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    const/high16 v2, 0x4080

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHeaderBottom:I

    return-void
.end method

.method public resetVariable(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->reset()V

    :cond_1
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2

    const-string v0, "SPenGesture"

    const-string v1, "SpenGestureView: setFocusedWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public setHapticEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v2

    if-le v2, v4, :cond_1

    if-ne v1, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0
.end method
