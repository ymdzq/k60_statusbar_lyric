.class final Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$9;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $newConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$9;->$newConfig:Landroid/content/res/Configuration;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$9;->$newConfig:Landroid/content/res/Configuration;

    .line 4
    invoke-static {p0}, Lcom/miui/systemui/util/MiBlurCompat;->getBackgroundBlurOpened(Landroid/content/res/Configuration;)Z

    .line 6
    move-result p0

    .line 9
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onMiBlurChanged(Z)V

    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    return-object p0
    .line 15
.end method
