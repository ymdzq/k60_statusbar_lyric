.class Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;
.super Landroid/database/ContentObserver;
.source "ScreenEffectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenEffectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaperModeObserver"
.end annotation


# instance fields
.field private final PAPER_MODE_ENABLED_URI:Landroid/net/Uri;

.field private final PAPER_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/display/ScreenEffectFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/ScreenEffectFragment;)V
    .locals 1

    .line 598
    iput-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    .line 600
    new-instance v0, Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/settings/display/ScreenEffectFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "screen_paper_mode_enabled"

    .line 603
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->PAPER_MODE_ENABLED_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_paper_mode"

    .line 605
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->PAPER_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method private isGlobalPaperMode()Z
    .locals 2

    .line 644
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {p0}, Lcom/android/settings/display/ScreenEffectFragment;->access$400(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPaperModeEnable()Z
    .locals 2

    .line 638
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {p0}, Lcom/android/settings/display/ScreenEffectFragment;->access$300(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 619
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->isPaperModeEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->isGlobalPaperMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 620
    invoke-static {}, Lcom/android/settings/display/ScreenEffectFragment;->-$$Nest$sfgetIS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 622
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_color_and_optimize_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/display/ScreenEffectFragment;->-$$Nest$mshowToast(Lcom/android/settings/display/ScreenEffectFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {p1}, Lcom/android/settings/display/ScreenEffectFragment;->-$$Nest$mdoCompatibleAction(Lcom/android/settings/display/ScreenEffectFragment;)V

    .line 626
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {p0, v0}, Lcom/android/settings/display/ScreenEffectFragment;->-$$Nest$mupdateExpertStatus(Lcom/android/settings/display/ScreenEffectFragment;Z)V

    goto :goto_1

    .line 628
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/display/ScreenEffectFragment;->-$$Nest$msetScreenEffectChannelEnable(Lcom/android/settings/display/ScreenEffectFragment;Z)V

    .line 629
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 630
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 631
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {p1}, Lcom/android/settings/display/ScreenEffectFragment;->-$$Nest$mcancelToast(Lcom/android/settings/display/ScreenEffectFragment;)V

    .line 633
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {p0, v0}, Lcom/android/settings/display/ScreenEffectFragment;->-$$Nest$mupdateExpertStatus(Lcom/android/settings/display/ScreenEffectFragment;Z)V

    :goto_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEffectFragment;->access$000(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->PAPER_MODE_ENABLED_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEffectFragment;->access$100(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->PAPER_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->this$0:Lcom/android/settings/display/ScreenEffectFragment;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEffectFragment;->access$200(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
