.class public Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;
.super Ljava/lang/Object;
.source "FloatingHelperFactory.java"


# direct methods
.method public static get(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
    .locals 2

    .line 16
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 23
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-object v0
.end method

.method public static getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lmiuix/core/util/IntentUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 30
    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-nez p0, :cond_1

    .line 32
    sget-boolean p0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
