.class public Lcom/android/settings/utils/DisplayCutoutHelper;
.super Ljava/lang/Object;
.source "DisplayCutoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/DisplayCutoutHelper$LifecycleHandler;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smadapterDisplayCutout(Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/utils/DisplayCutoutHelper;->adapterDisplayCutout(Landroid/app/Activity;)V

    return-void
.end method

.method public static adapter(Landroid/app/Application;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/settings/utils/DisplayCutoutHelper$LifecycleHandler;

    invoke-direct {v0}, Lcom/android/settings/utils/DisplayCutoutHelper$LifecycleHandler;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private static adapterDisplayCutout(Landroid/app/Activity;)V
    .locals 2

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 23
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
