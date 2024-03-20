.class public Lcom/android/settings/widget/TopImageGuideView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TopImageGuideView.java"


# static fields
.field public static final IS_FOLD_SCREEN_DEVICE:Z

.field private static TAG:Ljava/lang/String; = "TopImageGuideView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkModeEnable:Landroid/view/View;

.field private mDarkModeOuterView:Landroid/view/View;

.field private mDarkModeView:Landroid/view/View;

.field private mLightModeEnable:Landroid/view/View;

.field private mLightModeOuterView:Landroid/view/View;

.field private mLightModeView:Landroid/view/View;

.field private mOutImageView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/widget/TopImageGuideView;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDarkModeOuterView(Lcom/android/settings/widget/TopImageGuideView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeOuterView:Landroid/view/View;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/settings/widget/TopImageGuideView;->IS_FOLD_SCREEN_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/TopImageGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/TopImageGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .line 48
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    .line 50
    sget v0, Lcom/android/settings/R$id;->dark_mode_enable:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeEnable:Landroid/view/View;

    .line 51
    sget v0, Lcom/android/settings/R$id;->light_mode_enable:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mLightModeEnable:Landroid/view/View;

    .line 52
    sget v0, Lcom/android/settings/R$id;->dark_mode_outer_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeOuterView:Landroid/view/View;

    .line 53
    sget v0, Lcom/android/settings/R$id;->light_mode_outer_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mLightModeOuterView:Landroid/view/View;

    .line 54
    sget v0, Lcom/android/settings/R$id;->light_mode_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mLightModeView:Landroid/view/View;

    .line 55
    sget v0, Lcom/android/settings/R$id;->dark_mode_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeView:Landroid/view/View;

    .line 56
    sget v0, Lcom/android/settings/R$id;->outer_image_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mOutImageView:Landroid/view/View;

    .line 58
    sget-boolean v1, Lcom/android/settings/widget/TopImageGuideView;->IS_FOLD_SCREEN_DEVICE:Z

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->dark_mode_settings_padding_fold:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/widget/TopImageGuideView;->mOutImageView:Landroid/view/View;

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/widget/TopImageGuideView;->mOutImageView:Landroid/view/View;

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 59
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->image_dark_mode_fold_land:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mLightModeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->image_light_mode_fold_land:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->image_dark_mode_fold_port:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mLightModeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->image_light_mode_fold_port:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeEnable:Landroid/view/View;

    new-instance v1, Lcom/android/settings/widget/TopImageGuideView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/TopImageGuideView$1;-><init>(Lcom/android/settings/widget/TopImageGuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mLightModeEnable:Landroid/view/View;

    new-instance v1, Lcom/android/settings/widget/TopImageGuideView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/TopImageGuideView$2;-><init>(Lcom/android/settings/widget/TopImageGuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mLightModeOuterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeOuterView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->light_dark_mode_outer:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mDarkModeOuterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/TopImageGuideView;->mLightModeOuterView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->light_dark_mode_outer:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public showForceDarkAlertDialog()V
    .locals 2

    .line 123
    sget-object v0, Lcom/android/settings/widget/TopImageGuideView;->TAG:Ljava/lang/String;

    const-string v1, "darkMode cannot be exited due to power save"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/widget/TopImageGuideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 125
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->dark_mode_power_save_alert_dialog_title:I

    .line 126
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->dark_mode_power_save_alert_dialog_message:I

    .line 127
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->dark_mode_power_save_alert_dialog_confirm:I

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
