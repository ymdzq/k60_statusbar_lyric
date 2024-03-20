.class public Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeActivity;
.super Landroid/app/Activity;
.source "FakeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/OrientationCompat;->releaseFixedOrientation(Landroid/app/Activity;)I

    move-result v0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/OrientationCompat;->fixedOrientation(Landroid/app/Activity;I)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
