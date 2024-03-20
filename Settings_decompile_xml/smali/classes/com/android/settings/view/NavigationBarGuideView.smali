.class public Lcom/android/settings/view/NavigationBarGuideView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mClickOnDialog:Z

.field private mDemoExistes:Z

.field private mFullScreenContainer:Landroid/view/View;

.field private mFullScreenRadio:Landroid/widget/RadioButton;

.field private mFullScreenVideoView:Landroid/widget/VideoView;

.field private mHasCheckedDemo:Z

.field private mIsShowGestureLine:Z

.field private mNavigationHandle:Landroid/view/View;

.field private mNeedShowDialog:Z

.field private mVirtualKeyContainer:Landroid/view/View;

.field private mVirtualKeyRadio:Landroid/widget/RadioButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/android/settings/view/NavigationBarGuideView;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClickOnDialog(Lcom/android/settings/view/NavigationBarGuideView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mClickOnDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullScreenRadio(Lcom/android/settings/view/NavigationBarGuideView;)Landroid/widget/RadioButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenRadio:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedShowDialog(Lcom/android/settings/view/NavigationBarGuideView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mNeedShowDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualKeyRadio(Lcom/android/settings/view/NavigationBarGuideView;)Landroid/widget/RadioButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyRadio:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlertDialog(Lcom/android/settings/view/NavigationBarGuideView;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClickOnDialog(Lcom/android/settings/view/NavigationBarGuideView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mClickOnDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedShowDialog(Lcom/android/settings/view/NavigationBarGuideView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mNeedShowDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/view/NavigationBarGuideView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/android/settings/view/NavigationBarGuideView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/view/NavigationBarGuideView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/android/settings/view/NavigationBarGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/view/NavigationBarGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/view/NavigationBarGuideView;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/view/NavigationBarGuideView;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkDemoExist()Z
    .locals 5

    .line 256
    iget-boolean v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mHasCheckedDemo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mHasCheckedDemo:Z

    .line 259
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 260
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.fsgesture.HomeDemoAct"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "DEMO_TYPE"

    const-string v3, "DEMO_TO_HOME"

    .line 261
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    iput-boolean v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mDemoExistes:Z

    .line 269
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mDemoExistes:Z

    return p0
.end method

.method private createDialog()V
    .locals 4

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mClickOnDialog:Z

    .line 165
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->navigation_guide_dialog_title:I

    .line 166
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->navigation_guide_dialog_summary:I

    .line 167
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->navigation_guide_dialog_dont_show_again:I

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->navigation_guide_dialog_ok:I

    new-instance v2, Lcom/android/settings/view/NavigationBarGuideView$3;

    invoke-direct {v2, p0}, Lcom/android/settings/view/NavigationBarGuideView$3;-><init>(Lcom/android/settings/view/NavigationBarGuideView;)V

    .line 170
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->navigation_guide_dialog_skip:I

    new-instance v2, Lcom/android/settings/view/NavigationBarGuideView$2;

    invoke-direct {v2, p0}, Lcom/android/settings/view/NavigationBarGuideView$2;-><init>(Lcom/android/settings/view/NavigationBarGuideView;)V

    .line 184
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/settings/view/NavigationBarGuideView$4;

    invoke-direct {v1, p0}, Lcom/android/settings/view/NavigationBarGuideView$4;-><init>(Lcom/android/settings/view/NavigationBarGuideView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private isScreenButtonHidden()Z
    .locals 1

    .line 215
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setNavigationVisibility()V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mIsShowGestureLine:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mNavigationHandle:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mNavigationHandle:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setVideoViewUnFocus()V
    .locals 6

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setAudioFocusRequest"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenVideoView:Landroid/widget/VideoView;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateRadioState()V
    .locals 3

    .line 242
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->isScreenButtonHidden()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 244
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 247
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private updateVideoBackground()V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 224
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->updateVideoBackground()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 141
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->isScreenButtonHidden()Z

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenContainer:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_3

    .line 144
    iget-boolean p1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mNeedShowDialog:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->checkDemoExist()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->createDialog()V

    .line 146
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 147
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/AnalyticsUtils;->trackLearnGesturesWindowEvent(Landroid/content/Context;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/view/NavigationBarGuideView;->setScreenButtonHidden(Z)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenRadio:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 151
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/settings/view/NavigationBarGuideView;->setScreenButtonHidden(Z)V

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenRadio:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 159
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 230
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    sget v0, Lcom/android/settings/R$id;->video_view_full_screen:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->setVideoViewUnFocus()V

    .line 82
    sget v0, Lcom/android/settings/R$id;->full_screen_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenContainer:Landroid/view/View;

    .line 83
    sget v0, Lcom/android/settings/R$id;->virtual_keys_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyContainer:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcom/android/settings/R$id;->radio_button_full_screen:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenRadio:Landroid/widget/RadioButton;

    .line 87
    sget v0, Lcom/android/settings/R$id;->radio_button_virtual_keys:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyRadio:Landroid/widget/RadioButton;

    .line 88
    sget v0, Lcom/android/settings/R$id;->navigation_handle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mNavigationHandle:Landroid/view/View;

    .line 89
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->updateRadioState()V

    .line 90
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "need_show_navigation_guide"

    const/4 v2, 0x1

    .line 91
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mNeedShowDialog:Z

    .line 93
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->setNavigationVisibility()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->updateVideoBackground()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->updateRadioState()V

    return-void
.end method

.method public requestAccessibilityFocus()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenRadio:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mFullScreenRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->requestAccessibilityFocus()Z

    move-result p0

    return p0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyRadio:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mVirtualKeyRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->requestAccessibilityFocus()Z

    move-result p0

    return p0

    .line 279
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    move-result p0

    return p0
.end method

.method public setIsShowGestureLine(Z)V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/view/NavigationBarGuideView;->mIsShowGestureLine:Z

    if-eq p1, v0, :cond_0

    .line 99
    iput-boolean p1, p0, Lcom/android/settings/view/NavigationBarGuideView;->mIsShowGestureLine:Z

    .line 100
    invoke-direct {p0}, Lcom/android/settings/view/NavigationBarGuideView;->setNavigationVisibility()V

    :cond_0
    return-void
.end method

.method setScreenButtonHidden(Z)V
    .locals 1

    .line 211
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method
