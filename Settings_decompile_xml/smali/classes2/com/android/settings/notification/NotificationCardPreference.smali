.class public Lcom/android/settings/notification/NotificationCardPreference;
.super Landroidx/preference/Preference;
.source "NotificationCardPreference.java"


# instance fields
.field private mBadgeText:Landroid/widget/TextView;

.field private mFloatNotification:Landroid/view/View;

.field private mFloatText:Landroid/widget/TextView;

.field private mLockScreenNotification:Landroid/view/View;

.field private mLockScreenText:Landroid/widget/TextView;

.field private mShowAppBadge:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFloatNotification(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/NotificationCardPreference;->mFloatNotification:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockScreenNotification(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/NotificationCardPreference;->mLockScreenNotification:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowAppBadge(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/NotificationCardPreference;->mShowAppBadge:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartBadge(Lcom/android/settings/notification/NotificationCardPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationCardPreference;->startBadge()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFloat(Lcom/android/settings/notification/NotificationCardPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationCardPreference;->startFloat()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartLockScreen(Lcom/android/settings/notification/NotificationCardPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationCardPreference;->startLockScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget p1, Lcom/android/settings/R$layout;->layout_notification_top_card:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private isAppEnable(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 143
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private setupAnim(Landroid/view/View;)V
    .locals 1

    .line 83
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private startBadge()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettingsHelper;->getShowBadgeNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private startFloat()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettingsHelper;->getFloatNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private startLockScreen()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettingsHelper;->getLockScreenNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 37
    new-instance v0, Lcom/android/settings/notification/NotificationCardPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationCardPreference$1;-><init>(Lcom/android/settings/notification/NotificationCardPreference;)V

    .line 50
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    sget v1, Lcom/android/settings/R$id;->lock_screen_notification_card:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mLockScreenNotification:Landroid/view/View;

    .line 54
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v1, Lcom/android/settings/R$id;->lock_screen_notification_card_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mLockScreenText:Landroid/widget/TextView;

    .line 57
    sget v1, Lcom/android/settings/R$id;->float_notification_card:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mFloatNotification:Landroid/view/View;

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v1, Lcom/android/settings/R$id;->float_notification_card_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mFloatText:Landroid/widget/TextView;

    .line 61
    sget v1, Lcom/android/settings/R$id;->show_app_badge_card:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mShowAppBadge:Landroid/view/View;

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/android/settings/R$id;->show_app_badge_card_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationCardPreference;->mBadgeText:Landroid/widget/TextView;

    .line 65
    new-instance v0, Lcom/android/settings/notification/NotificationCardPreference$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/NotificationCardPreference$2;-><init>(Lcom/android/settings/notification/NotificationCardPreference;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationCardPreference;->setCardEnable()V

    return-void
.end method

.method public setCardEnable()V
    .locals 4

    const-string v0, "com.miui.notification"

    .line 120
    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationCardPreference;->isAppEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mLockScreenText:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mFloatText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mLockScreenText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->notification_card_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mFloatText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mLockScreenNotification:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mFloatNotification:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference;->mShowAppBadge:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCardPreference;->mLockScreenNotification:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationCardPreference;->setupAnim(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCardPreference;->mFloatNotification:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationCardPreference;->setupAnim(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCardPreference;->mShowAppBadge:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationCardPreference;->setupAnim(Landroid/view/View;)V

    :cond_1
    return-void
.end method
