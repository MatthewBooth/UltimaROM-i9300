.class public Lcom/android/server/smartclip/SmartClipView;
.super Landroid/widget/FrameLayout;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;,
        Lcom/android/server/smartclip/SmartClipView$SPenVibrator;,
        Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;,
        Lcom/android/server/smartclip/SmartClipView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field public static final CROPPING_MODE_EXCLUSIVE:I = 0x1

.field public static final CROPPING_MODE_NORMAL:I = 0x0

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MAX_DATA_EXTRACTION_DELAY:I = 0x7d0

.field private static final MAX_EXTRACTION_REQUEST_ID:I = 0x186a0

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MIN_DATA_EXTRACTION_DELAY:I = 0x64

.field private static final MIN_EXTRACTION_REQUEST_ID:I = 0x0

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x96

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x5

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final DEBUG:Z

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private final SMART_CLIP_NON_CLOSED_CURVE_AREA:I

.field private final SMART_CLIP_POINT_DISTANCE_MIN:I

.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field private mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mCropStartingTime:J

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

.field private mCroppingMode:I

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDataExtractionRequestId:I

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

.field mFocusedWindow:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

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

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field private mIsClosedCurve:Z

.field private mIsDisplayMetaArea:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field mIsEnableGestureEffect:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsExtractingDataFromView:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastDataExtractionRequestTime:J

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

.field private final mMinCroppingTime:J

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private mPathPaintBlack:Landroid/graphics/Paint;

.field private mPathPaintOrange:Landroid/graphics/Paint;

.field private mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/smartclip/SmartClipView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field public mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SmartClipView"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->TAG:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->DEBUG:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBootCompleted:Z

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.gesturepad"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_STROKE_WIDTH:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_START_CIRCLE_RADIUS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_END_CIRCLE_RADIUS:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_CROPIMAGE_MARGIN:I

    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_START_LOADING_ANIMATION:S

    iput-short v6, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_FINISH_LOADING_ANIMATION:S

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_NONE:I

    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PLAY:I

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_POINT_DISTANCE_MIN:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_NON_CLOSED_CURVE_AREA:I

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUri:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUriForAnimation:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    iput-short v3, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_SUGGESTION_SERVICE_START:S

    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_CROPPING_IMG_SAVE:S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCroppingTime:J

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$1;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$2;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$5;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$6;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$7;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->init()V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SpenGestureManager;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SmartClipView"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->TAG:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->DEBUG:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBootCompleted:Z

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.gesturepad"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_STROKE_WIDTH:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_START_CIRCLE_RADIUS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_END_CIRCLE_RADIUS:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_CROPIMAGE_MARGIN:I

    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_START_LOADING_ANIMATION:S

    iput-short v6, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_FINISH_LOADING_ANIMATION:S

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_NONE:I

    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PLAY:I

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_POINT_DISTANCE_MIN:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_NON_CLOSED_CURVE_AREA:I

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUri:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUriForAnimation:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    iput-short v3, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_SUGGESTION_SERVICE_START:S

    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_CROPPING_IMG_SAVE:S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCroppingTime:J

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$1;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$2;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$5;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$6;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$7;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->init()V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    :cond_0
    return-void
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x4000

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "SmartClipView"

    const-string v8, "GetDefaultDisplayBimap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/smartclip/SmartClipView;->getDegreesForRotation(I)F

    move-result v1

    cmpl-float v7, v1, v11

    if-lez v7, :cond_4

    move v3, v5

    :goto_0
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    :cond_0
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->playCaptureSound()V

    :cond_1
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_2
    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v10

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v10

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v5

    :cond_4
    move v3, v6

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->isVzwSetupRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/smartclip/SmartClipView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/smartclip/SmartClipView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/smartclip/SmartClipView;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    return-void
.end method

.method static synthetic access$5602(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/smartclip/SmartClipView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    return-object v0
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

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->getMarked(II)I

    move-result v2

    :cond_0
    if-eq v2, v5, :cond_6

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_6

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_5

    :cond_1
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    :goto_1
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    :cond_2
    :goto_2
    const/16 v0, 0xc

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x48

    if-gt v3, p1, :cond_3

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x48

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x48

    if-gt v3, p2, :cond_3

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x48

    if-ge v3, p2, :cond_4

    :cond_3
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    :cond_4
    return-void

    :cond_5
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    goto :goto_1

    :cond_6
    sub-int v3, p2, v1

    if-ltz v3, :cond_7

    if-ltz p1, :cond_7

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_7

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->getMarked(II)I

    move-result v2

    :cond_7
    if-eq v2, v5, :cond_a

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_a

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_8

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_9

    :cond_8
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    :goto_3
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    goto :goto_2

    :cond_9
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private checkClosedCurveForActionUp(III)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit16 v1, v1, -0xf0

    if-gt v1, p1, :cond_1

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit16 v1, v1, 0xf0

    if-lt v1, p1, :cond_1

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit16 v1, v1, -0xf0

    if-gt v1, p2, :cond_1

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit16 v1, v1, 0xf0

    if-lt v1, p2, :cond_1

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v1, v2, :cond_2

    :cond_0
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    :goto_0
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    :cond_1
    return-void

    :cond_2
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

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

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

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

.method private init()V
    .locals 15

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    :try_start_0
    invoke-interface {v14}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.diotek.mini_penmemo"

    const-string v3, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.gesturepad"

    const-string v2, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "SmartClipView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMedianValueForGesturePosX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    if-eqz v11, :cond_1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/smartclip/SmartClipView$3;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipView$3;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$4;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDirectionHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mVC:Landroid/view/ViewConfiguration;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setDisplayDegrees()Z

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    :goto_2
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayWidthForMatrix:I

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayHeightForMatrix:I

    new-instance v1, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayHeightForMatrix:I

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayWidthForMatrix:I

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;-><init>(IIZ)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstPointer:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    new-instance v9, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, -0x100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v12, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-direct {v12}, Lcom/android/server/smartclip/SmartClipView$PointerState;-><init>()V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    new-instance v0, Lcom/android/server/smartclip/GestureEffectManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/GestureEffectManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/GestureEffectManager;->init(Lcom/android/server/smartclip/SmartClipView;Landroid/os/Handler;Lcom/android/server/smartclip/SmartClipView$SPenVibrator;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "JP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->load(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v0, "SmartClipView"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private isPossibleCapture()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "SmartClipView"

    const-string v4, "MDM: Screen Capture Disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    if-eq v4, v3, :cond_1

    const-string v3, "SmartClipView"

    const-string v4, "flashannotate couldn\'t by MDM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SmartClipView"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

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

.method private isVzwSetupRunning()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "VZW"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.sys.vzw_setup_running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "SmartClipView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard is Running ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 16

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    :cond_0
    move/from16 v0, p1

    float-to-int v12, v0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    move/from16 v0, p2

    float-to-int v12, v0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v13, p3, p1

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float v14, p4, p2

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1, v13, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    add-float v12, p3, p1

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    float-to-int v12, v12

    add-float v13, p4, p2

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-float v12, p1, p3

    if-nez v12, :cond_2

    cmpl-float v12, p2, p4

    if-eqz v12, :cond_11

    :cond_2
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v2, p3

    move/from16 v3, p4

    sub-float v12, v10, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_5

    sub-float v12, v3, v11

    sub-float v13, v2, v10

    div-float v9, v12, v13

    :goto_0
    mul-float v12, v10, v9

    sub-float v5, v11, v12

    cmpg-float v12, p1, p3

    if-gtz v12, :cond_c

    :goto_1
    cmpg-float v12, v10, v2

    if-gtz v12, :cond_11

    move v7, v10

    mul-float v12, v10, v9

    add-float v8, v12, v5

    float-to-int v12, v7

    float-to-int v13, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurve(III)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, 0x3f80

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    const/4 v4, 0x1

    :goto_2
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    if-ltz v12, :cond_4

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_4

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, -0x4080

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    const/4 v4, 0x1

    :goto_3
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    if-ltz v12, :cond_7

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_7

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    float-to-int v12, v8

    if-ltz v12, :cond_9

    float-to-int v12, v7

    if-ltz v12, :cond_9

    float-to-int v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_9

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    float-to-int v14, v7

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    :cond_9
    const/high16 v12, 0x3f80

    add-float/2addr v10, v12

    goto/16 :goto_1

    :cond_a
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    float-to-int v12, v8

    if-ltz v12, :cond_b

    float-to-int v12, v7

    if-ltz v12, :cond_b

    float-to-int v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_b

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    float-to-int v14, v7

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    :cond_b
    const/high16 v12, 0x3f80

    sub-float/2addr v10, v12

    :cond_c
    cmpl-float v12, v10, v2

    if-ltz v12, :cond_11

    move v7, v10

    mul-float v12, v10, v9

    add-float v8, v12, v5

    float-to-int v12, v7

    float-to-int v13, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurve(III)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_d

    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, 0x3f80

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    const/4 v4, 0x1

    :goto_4
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    if-ltz v12, :cond_e

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_e

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, -0x4080

    cmpg-float v12, v12, v13

    if-gez v12, :cond_a

    const/4 v4, 0x1

    :goto_5
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    if-ltz v12, :cond_10

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_10

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method private playCaptureSound()V
    .locals 2

    const-string v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SmartClipView"

    const-string v1, "Camera is running!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->play(I)V

    :cond_0
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v4, 0x7fffffff

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

    const-string v5, "com.sec.android.app.SmartClipService.SmartClipAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SmartClipView"

    const-string v5, "addSPenEvent : SuggestionService is running!."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    :cond_0
    return-void

    :cond_1
    const-string v4, "SmartClipView"

    const-string v5, "addSPenEvent : SuggestionService is not running!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    goto :goto_0
.end method

.method private setDisplayDegrees()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iget v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-le v2, v5, :cond_2

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    :goto_0
    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mVerticalMovingSlop:I

    :goto_1
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SmartClipView;->getDegreesForRotation(I)F

    move-result v1

    const-string v2, "SmartClipView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentDisplayWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentDisplayHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Rot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x4334

    cmpl-float v2, v1, v2

    if-nez v2, :cond_5

    :cond_0
    const-string v2, "SmartClipView"

    const-string v5, "setDisplayDegrees : mDisplayRoateDegress is 0"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-ne v2, v3, :cond_4

    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->setPortrait(Z)V

    :cond_1
    return v0

    :cond_2
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mVerticalMovingSlop:I

    goto :goto_1

    :cond_4
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    goto :goto_2

    :cond_5
    const-string v2, "SmartClipView"

    const-string v5, "setDisplayDegrees : mDisplayRoateDegress is 1"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v2, :cond_6

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_3
.end method

.method private setPointGroupClear()V
    .locals 4

    const/high16 v3, -0x4080

    const/4 v2, -0x1

    const-string v0, "SmartClipView"

    const-string/jumbo v1, "setPointGroupClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    return-void
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0, v6}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

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

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/android/server/smartclip/SmartClipView$9;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SmartClipView$9;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->playVibrator()V

    return-void
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 29

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    if-nez v2, :cond_34

    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->isVzwSetupRunning()Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    :cond_1
    const/16 v2, 0x9

    if-eq v8, v2, :cond_1c

    const/4 v2, 0x7

    if-eq v8, v2, :cond_1c

    const/16 v2, 0xa

    if-eq v8, v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    monitor-exit v28

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v8, :cond_4

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    :cond_4
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : addSPenEvent event down start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->updateRotation()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setAboutStartingSuggestionService()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_5

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : can not cropping because SuggestionService is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v28

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_6

    const-string v2, "SmartClipView"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    monitor-exit v28

    goto :goto_0

    :cond_6
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v18, v2, 0x8

    if-nez v8, :cond_8

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->clearTrace()V

    const/4 v2, 0x0

    move-object/from16 v0, v22

    #setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2702(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    if-ge v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v17

    if-gt v0, v1, :cond_a

    new-instance v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    if-ltz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2700(Lcom/android/server/smartclip/SmartClipView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    #setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2702(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    const-string v2, "SmartClipView"

    const-string v3, "mBrType : BROADCAST_VIDEOPLAYER_PAUSE SET"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_e

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : can not cropping because SuggestionService is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v28

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_f

    const-string v2, "SmartClipView"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    monitor-exit v28

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v15, :cond_16

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v13, :cond_15

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    move-object/from16 v22, v2

    :goto_5
    if-eqz v22, :cond_14

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2800(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14, v10}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    if-eqz v22, :cond_12

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/server/smartclip/SmartClipView$PointerState;->addTrace(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_11

    :cond_10
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mPathOfCurveForDrawing reset 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v6, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    iget v7, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_6

    :cond_15
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    :cond_16
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v0, v13, :cond_1c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    move-object/from16 v22, v2

    :goto_8
    if-eqz v22, :cond_1b

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2800(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    :goto_9
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-eqz v22, :cond_19

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/server/smartclip/SmartClipView$PointerState;->addTrace(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    :cond_17
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mPathOfCurveForDrawing reset 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v6, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    iget v7, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v22

    #setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2902(Lcom/android/server/smartclip/SmartClipView$PointerState;I)I

    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_1d

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mDisplayRoateChanged is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->getBoundRectOfPath()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_1e

    const/4 v2, 0x2

    if-ne v8, v2, :cond_26

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/android/server/smartclip/SmartClipView;->requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z

    :cond_1e
    :goto_a
    const-string v2, "SmartClipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotionEvent, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v8, v2, :cond_1f

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_21

    :cond_1f
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    sub-long v11, v2, v4

    const-wide/16 v2, 0x12c

    cmp-long v2, v11, v2

    if-gez v2, :cond_27

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    :cond_20
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    :cond_21
    const/4 v2, 0x3

    if-ne v8, v2, :cond_22

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    :cond_22
    const/16 v2, 0xa

    if-ne v8, v2, :cond_23

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-eqz v2, :cond_24

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "SmartClipView"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    :goto_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    :cond_24
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    packed-switch v2, :pswitch_data_0

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_26
    const/4 v2, 0x1

    if-ne v8, v2, :cond_1e

    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/android/server/smartclip/SmartClipView;->requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z

    goto/16 :goto_a

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_32

    const/16 v21, 0x0

    :goto_e
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v25

    const/16 v16, 0x0

    :goto_f
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_29

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v2

    aget v26, v2, v16

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3200(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v2

    aget v27, v2, v16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    if-nez v2, :cond_28

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    :goto_10
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    :cond_28
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/smartclip/SmartClipView;->markMatrixForCropping(FFFFI)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    goto :goto_10

    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurveForActionUp(III)V

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e

    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mNumColsedCurves is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    :cond_2b
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-nez v2, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/smartclip/GestureEffectManager;->checkDirectionGesture(FFFFLjava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4120

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4120

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2e

    :cond_2d
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "so close pointer return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_2f

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsUsablePath is false and mIsUsableSecondPath is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-nez v2, :cond_30

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    const-string v2, "SmartClipView"

    const-string v3, "mBrType : BROADCAST_VIDEOPLAYER_PLAY SET"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "SmartClipView"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    goto/16 :goto_b

    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mNumColsedCurves is 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    goto/16 :goto_11

    :cond_32
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    goto/16 :goto_b

    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/smartclip/SmartClipView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/smartclip/SmartClipView$8;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_c

    :pswitch_2
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "SmartClipView"

    const-string v3, "mContext.sendBroadcast : VIDEOPLAYER_PAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_3
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "SmartClipView"

    const-string v3, "mContext.sendBroadcast : VIDEOPLAYER_PLAY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_34
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    const-string v2, "SmartClipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true, GlanceView is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SmartClipSvc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_35
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "this event couldn\'t send to GestureDetector"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

.method public closeView()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setCroppingMode(I)V

    return-void
.end method

.method public cropDraggedRect()Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "SmartClipView"

    const-string v4, "cropDraggedRect()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const-string v3, "SmartClipView"

    const-string v4, "Starting cropping dragged area!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getBoundRectOfPath()Landroid/graphics/Rect;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_a

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_6

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_6
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_7

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_7
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-le v3, v4, :cond_8

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    :cond_8
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-le v3, v4, :cond_9

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    :cond_9
    const-string v3, "SmartClipView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cropDraggedRect : croppedRect(adjusted) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    :cond_a
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    if-lez v3, :cond_0

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/smartclip/SmartClipView$10;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipView$10;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)Z
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected getBoundRectOfPath()Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    return-object v0
.end method

.method public getCroppingMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    return v0
.end method

.method public isExclusiveModeActivated()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenShowing()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SmartClipView"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v0}, Lcom/android/server/smartclip/GestureEffectManager;->isShowingGestureEffect()Z

    move-result v0

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .locals 22

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v18, "SmartClipView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "makePathForClosedCurve : isFirstCurve : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "SmartClipView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "makePathForClosedCurve : intersectionPointPrev : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", intersectionPointLast "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/smartclip/SmartClipView$PointerState;

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v15

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v15, :cond_4

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v18

    aget v16, v18, v5

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3200(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v18

    aget v17, v18, v5

    move/from16 v0, p1

    if-gt v0, v8, :cond_0

    add-int/lit8 v18, p2, 0x1

    move/from16 v0, v18

    if-lt v0, v8, :cond_0

    if-nez v4, :cond_2

    move/from16 v9, v16

    move/from16 v10, v17

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    :goto_2
    const/4 v4, 0x1

    :goto_3
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    goto :goto_2

    :cond_2
    move/from16 v6, v16

    move/from16 v7, v17

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v6, v9

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    add-float v20, v7, v10

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_4
    move/from16 v9, v16

    move/from16 v10, v17

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v6, v9

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    add-float v20, v7, v10

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :goto_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4220

    cmpg-float v18, v18, v19

    if-gez v18, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4220

    cmpg-float v18, v18, v19

    if-gez v18, :cond_7

    const/16 v18, 0x0

    :goto_6
    return v18

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_5

    :cond_7
    const/16 v18, 0x1

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v1, p0}, Lcom/android/server/smartclip/GestureEffectManager;->onAttachedToWindow(Lcom/android/server/smartclip/SmartClipView;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/smartclip/SmartClipView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDataExtractionResponseArrived(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    .locals 4

    iget-object v1, p1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/server/smartclip/SmartClipView;->setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "SmartClipView"

    const-string v3, "onDataExtractionResponseArrived : Repository is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, -0x4080

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v4, 0x4100

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    const/high16 v4, 0x4080

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-eq v2, v7, :cond_2

    iget-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    if-ne v2, v7, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const v2, 0x3087cefa

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const v2, -0x783106

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/smartclip/SmartClipView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)Z

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mHeaderBottom:I

    return-void
.end method

.method protected requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string/jumbo v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    if-ne p2, v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    sub-long v0, v7, v9

    iget-boolean v7, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    if-ne v7, v6, :cond_4

    const-wide/16 v7, 0x7d0

    cmp-long v7, v0, v7

    if-ltz v7, :cond_0

    :cond_2
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    :try_start_0
    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    const v8, 0x186a0

    if-le v7, v8, :cond_3

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    :cond_3
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    invoke-direct {v3, v7, p1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;)V

    const/4 v7, 0x0

    invoke-interface {v4, v3, v7}, Landroid/view/IWindowManager;->dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    goto :goto_0

    :cond_4
    const-wide/16 v7, 0x64

    cmp-long v7, v0, v7

    if-gez v7, :cond_2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "SmartClipView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetVariable(I)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/high16 v5, -0x4080

    const/4 v4, 0x0

    const-string v2, "SmartClipView"

    const-string v3, "resetVariable : reset"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView$PointerState;->clearTrace()V

    #setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v1, v4}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2702(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstPointer:Z

    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->reset()V

    :cond_1
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    return-void
.end method

.method public setCroppingMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    return-void
.end method

.method public setFocusWindow(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    return-void
.end method

.method public setHapticEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/GestureEffectManager;->setPhoneWindowMangerFlag(Z)V

    return-void
.end method

.method public setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const/4 v0, 0x1

    return v0
.end method

.method public updateRotation()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "SmartClipView"

    const-string/jumbo v3, "updateRotation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setDisplayDegrees()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartclip/SmartClipView$PointerState;

    #getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v2

    if-le v2, v5, :cond_1

    if-ne v1, v5, :cond_0

    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
