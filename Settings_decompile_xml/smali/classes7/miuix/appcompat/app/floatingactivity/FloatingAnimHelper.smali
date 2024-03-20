.class public Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;
.super Ljava/lang/Object;
.source "FloatingAnimHelper.java"


# static fields
.field private static sTransWithClipAnimSupported:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "android.view.animation.TranslateWithClipAnimation"

    .line 24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FloatingAnimHelper"

    const-string v2, "Failed to get isSupportTransWithClipAnim attributes"

    .line 27
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static clearFloatingWindowAnim(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static execFloatingWindowEnterAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 147
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_normal_rom_enter:I

    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_normal_rom_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static execFloatingWindowExitAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 139
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_normal_rom_enter:I

    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_normal_rom_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static getAutoDensitySupportStatus(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .locals 1

    .line 195
    instance-of v0, p0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_0

    .line 196
    check-cast p0, Lmiuix/autodensity/IDensity;

    invoke-interface {p0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lmiuix/autodensity/IDensity;

    invoke-interface {p0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPortrait(Landroid/content/Context;)Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportTransWithClipAnim()Z
    .locals 1

    .line 182
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    return v0
.end method

.method public static markedPageIndex(Lmiuix/appcompat/app/AppCompatActivity;I)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$id;->miuix_appcompat_floating_window_index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$id;->miuix_appcompat_floating_window_index:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 166
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 167
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V
    .locals 1

    .line 49
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 54
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->getAutoDensitySupportStatus(Lmiuix/appcompat/app/AppCompatActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi:I

    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 58
    :cond_1
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi_land:I

    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi_land:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim:I

    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 64
    :cond_3
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_land:I

    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_land:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 68
    :cond_4
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_in_full_screen:I

    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_out_full_screen:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public static singleAppFloatingActivityEnter(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 38
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    invoke-static {p0, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->executeOpenEnterAnimation()V

    :goto_0
    return-void
.end method

.method public static singleAppFloatingActivityExit(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 105
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->getAutoDensitySupportStatus(Lmiuix/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi:I

    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 114
    :cond_1
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi_land:I

    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi_land:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim:I

    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 120
    :cond_3
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_land:I

    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_land:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 124
    :cond_4
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_in_full_screen:I

    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_out_full_screen:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method
