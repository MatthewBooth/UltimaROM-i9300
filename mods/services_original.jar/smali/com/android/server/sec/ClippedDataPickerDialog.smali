.class public Lcom/android/server/sec/ClippedDataPickerDialog;
.super Landroid/app/Dialog;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;
    }
.end annotation


# static fields
.field static CHILD_COUNT:I = 0x0

.field static final LOGTAG:Ljava/lang/String; = "ClipBoardDialog"


# instance fields
.field final ADD_ITEM:I

.field final CLIPS_CLEARED_BROADCAST:Ljava/lang/String;

.field final CLIPS_INFO:Ljava/lang/String;

.field final CLIP_REMOVED_BROADCAST:Ljava/lang/String;

.field final KNOX_VERSION:Ljava/lang/String;

.field final MAX_PROTECTED_COUNT:I

.field final SHARED_CLIPS_INFO:Ljava/lang/String;

.field mAdapter:Landroid/widget/BaseAdapter;

.field private mAddScenario:Z

.field private mBroadCastListener:Landroid/content/BroadcastReceiver;

.field private mButtonClick:Landroid/view/View$OnClickListener;

.field private mCalledDismissIntentFromSIPFlag:Z

.field private mCbm:Landroid/sec/clipboard/ClipboardExManager;

.field mClearButton:Landroid/widget/Button;

.field mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

.field private mClipBoardLandscapeHeight:I

.field private mClipBoardPanelLandscapeHeight:I

.field private mClipBoardPanelPortraitHeight:I

.field private mClipBoardPortraitHeight:I

.field private mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

.field private mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

.field private mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

.field private mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

.field mContentPanel:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mCurrentTargetDataType:I

.field private mDataCount:I

.field final mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

.field final mDismissIntentFromSIP:Ljava/lang/String;

.field final mDismissIntentFromShortCut:Ljava/lang/String;

.field final mDismissIntentFromStatusBar:Ljava/lang/String;

.field private mEnabledDismissIntent:Z

.field mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

.field mGridItemHeight:I

.field mGridItemWidth:I

.field mGridViewAniGoingOn:Z

.field mHTMLImageHeight:I

.field mHTMLImageWidth:I

.field private mIsAddedFilter:Z

.field private mIsDarkTheme:Z

.field private mIsDeletingItem:Z

.field private mIsInstalledMemo:Z

.field private mIsInstalledSMemo:Z

.field private mIsInstalledSNote:Z

.field private mIsProtect:Z

.field mIsShowingContextmenu:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSelectedIndex:I

.field private mShouldBeDismissed:Z

.field mShowingMenu:Landroid/view/Menu;

.field final mTextViewMaxLineLand:I

.field final mTextViewMaxLinePort:I

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x103034d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsProtect:Z

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->ADD_ITEM:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->MAX_PROTECTED_COUNT:I

    const-string v0, "DismissClipboardDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    const-string v0, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromShortCut:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mEnabledDismissIntent:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    const-string v0, "clips.info"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIPS_INFO:Ljava/lang/String;

    const-string/jumbo v0, "shared_clips.info"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->SHARED_CLIPS_INFO:Ljava/lang/String;

    const-string v0, "com.samsung.knox.clipboard.clipscleared"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIPS_CLEARED_BROADCAST:Ljava/lang/String;

    const-string v0, "com.samsung.knox.clipboard.clipremoved"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIP_REMOVED_BROADCAST:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->KNOX_VERSION:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDeletingItem:Z

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$6;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x103034d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsProtect:Z

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->ADD_ITEM:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->MAX_PROTECTED_COUNT:I

    const-string v0, "DismissClipboardDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    const-string v0, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromShortCut:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mEnabledDismissIntent:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    const-string v0, "clips.info"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIPS_INFO:Ljava/lang/String;

    const-string/jumbo v0, "shared_clips.info"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->SHARED_CLIPS_INFO:Ljava/lang/String;

    const-string v0, "com.samsung.knox.clipboard.clipscleared"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIPS_CLEARED_BROADCAST:Ljava/lang/String;

    const-string v0, "com.samsung.knox.clipboard.clipremoved"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->CLIP_REMOVED_BROADCAST:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->KNOX_VERSION:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDeletingItem:Z

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$6;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDeletingItem:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/TwSlidingDrawer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;
    .locals 0

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/sec/ClippedDataPickerDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    return v0
.end method

.method private isCheckProtectedItem(I)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v3, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isProtectedPossible()Z
    .locals 8

    const/16 v7, 0xa

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v6}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-le v0, v7, :cond_1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v6, v3}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v7, :cond_0

    :goto_2
    return v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    sget v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_2
.end method


# virtual methods
.method public IsSetProtectAction(I)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v8, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_1
    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isProtectedPossible()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    if-eqz v6, :cond_2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    const v7, 0x1030128

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x104088a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v5}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_3
    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    if-ge v3, v6, :cond_5

    invoke-direct {p0, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v6

    if-nez v6, :cond_6

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "some item is not unlocked...index :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v4, 0x0

    :cond_5
    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v7, Lcom/android/server/sec/ClippedDataPickerDialog$9;

    invoke-direct {v7, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$9;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_4
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v6, p1, v1}, Landroid/sec/clipboard/data/IClipboardDataList;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :try_start_2
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v7, Lcom/android/server/sec/ClippedDataPickerDialog$10;

    invoke-direct {v7, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$10;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method createClearConfirmDialog(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    goto :goto_0
.end method

.method public deleteAnimation()V
    .locals 14

    const v2, 0x3f4ccccd

    const/high16 v6, 0x3f00

    const/high16 v1, 0x3f80

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-gt v3, v4, :cond_3

    iput-boolean v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDeletingItem:Z

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v12, v3, v4

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v13, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "v is NULL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    sget v1, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDeletingItem:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete item...in dismiss()...CHILD_COUNT :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSelectedIndex :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    sget v2, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delete item...in dismiss()...CHILD_COUNT :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ClipboardServiceEx"

    const-string v3, "Clipboard dialog is closed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mEnabledDismissIntent:Z

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$11;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$11;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public enabledDismissIntent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mEnabledDismissIntent:Z

    return-void
.end method

.method isKnoxTwoEnabled()Z
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-nez v6, :cond_1

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Current user is a USER, hence return false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ClipboardServiceEx"

    const-string v6, "Current user is a persona, hence return true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClipBoardDialogSizeChanged()V
    .locals 6

    const/4 v5, -0x1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_0

    const v2, 0x10203fd

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v14, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "ClipboardServiceEx"

    const-string v15, "register PhoneStateListener"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v15, 0x20

    invoke-virtual {v13, v14, v15}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v14, v15, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/high16 v15, 0x100

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500ca

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500cb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500cc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500cd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_13

    iget v14, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_10

    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "ClipboardServiceEx"

    const-string v15, "orientation == Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v14, 0x57

    invoke-virtual {v11, v14}, Landroid/view/Window;->setGravity(I)V

    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_4

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Width :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "   Height :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const v14, 0x10900e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->setContentView(I)V

    const v14, 0x10202c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/server/sec/ClippedDataPickerGridView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "clipboardEx"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    :cond_5
    new-instance v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v14, v15}, Landroid/sec/clipboard/ClipboardExManager;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    new-instance v15, Lcom/android/server/sec/ClippedDataPickerDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-virtual {v11, v14, v15}, Landroid/view/Window;->setLayout(II)V

    const v14, 0x10203fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/server/sec/TwSlidingDrawer;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v15, Lcom/android/server/sec/ClippedDataPickerDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v14, v15}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->rebuildView()V

    const-string v9, ""

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v14

    if-eqz v14, :cond_8

    const-string v9, "sec_container_1."

    :cond_8
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mCbm.getContainerID() :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_SAVE_MODE:Z

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v14, Landroid/content/Intent;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_14

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_14

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_14

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.sec.android.provider.smemo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    :cond_b
    if-eqz v6, :cond_d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.sec.android.app.snotebook"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.samsung.android.snote"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    :cond_c
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    :cond_d
    if-eqz v6, :cond_f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.sec.android.app.memo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "com.samsung.android.app.memo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_10
    iget v14, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_11

    const-string v14, "ClipboardServiceEx"

    const-string v15, "orientation == Configuration.ORIENTATION_PORTRAIT"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500ce

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500cf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10500d1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    goto/16 :goto_0

    :cond_12
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "orientation does not accept. config.orientation :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "ClipboardServiceEx"

    const-string v15, "config is null!!!!"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    const v14, 0x1020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1040b44

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1040b51

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_15
    const v14, 0x10203fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v14, :cond_19

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v14

    if-ge v5, v14, :cond_19

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v14

    if-nez v14, :cond_18

    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_17

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "some item is not unlocked...index :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v7, 0x0

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v14

    if-eqz v14, :cond_1a

    if-eqz v7, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    invoke-virtual {v14}, Landroid/widget/SlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1b

    instance-of v14, v4, Landroid/view/ViewGroup;

    if-eqz v14, :cond_1b

    move-object v14, v4

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_1b

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1b

    instance-of v14, v2, Landroid/widget/ImageView;

    if-eqz v14, :cond_1b

    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    const v9, 0x1140005

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    iput-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    invoke-virtual {p2, v6}, Landroid/view/View;->twSetContextMenuZOrderToTop(Z)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v6, p2}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    new-instance v3, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v6, 0x1040b44

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v6}, Lcom/android/server/sec/ClippedDataPickerGridView;->isLayoutAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-direct {p0, v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x1140001

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v6, v7}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/high16 v6, 0x114

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_3

    new-instance v4, Ljava/io/File;

    const-string v6, "/data/clipboard"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu: rootPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; current user id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v6, Ljava/io/File;

    const-string v7, "clips.info"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6, v2}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    if-eqz v5, :cond_0

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu: mSelectedIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; rootfm.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v7

    if-lt v6, v7, :cond_0

    const/4 v6, 0x1

    :try_start_1
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu: IndexOutOfBoundsException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/clipboard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_0
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_SAVE_MODE:Z

    if-eqz v6, :cond_1

    const v6, 0x1140002

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_2

    :pswitch_1
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_2

    :cond_4
    const v6, 0x1140004

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_2

    :cond_5
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    if-eqz v6, :cond_6

    invoke-virtual {v3, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_2

    :cond_6
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    if-eqz v6, :cond_1

    const v6, 0x1140003

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_2

    :cond_7
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu(). data is invalid state. mSelectedIndex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSelectedIndex :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v7, v8}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    :pswitch_0
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select delete menu"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->deleteAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_0

    :pswitch_1
    :try_start_1
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select lock menu"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {p0, v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->IsSetProtectAction(I)V

    goto :goto_0

    :pswitch_2
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "ClipboardServiceEx"

    const-string v8, "select save in memo"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog$7;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$7;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_5
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "ClipboardServiceEx"

    const-string v7, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v5, v6

    goto :goto_0

    :pswitch_3
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "ClipboardServiceEx"

    const-string v8, "select save in gallery menu"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog$8;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$8;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_8
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "ClipboardServiceEx"

    const-string v7, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    move v5, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1020459
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->open()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsAddedFilter:Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ClipboardServiceEx"

    const-string v3, "register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "unregister PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    :cond_1
    return-void
.end method

.method public rebuildView()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x7dc

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "Clipboard"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3

    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    if-eq v0, p1, :cond_1

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasteTargetViewDataType() called !  mCurrentTargetDataType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-void
.end method

.method public show()V
    .locals 5

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$12;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$12;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clipboard will be re-created. config.orientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentOrientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    :cond_1
    return-void
.end method

.method public showProtectedMarker(Landroid/view/View;I)V
    .locals 8

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v5, 0x102040a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x102040b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct {p0, p2}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ClipboardServiceEx"

    const-string/jumbo v6, "showProtectedMarker@v.getTag() != null no!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ClipboardServiceEx"

    const-string/jumbo v6, "showProtectedMarker@v.getTag() != null !!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
