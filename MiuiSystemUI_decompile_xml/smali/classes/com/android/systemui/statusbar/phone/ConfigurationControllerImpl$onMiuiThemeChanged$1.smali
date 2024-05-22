.class final Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onMiuiThemeChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $isDefaultLockScreenTheme:Z

.field final synthetic $isDefaultSysUiTheme:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onMiuiThemeChanged$1;->$isDefaultLockScreenTheme:Z

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onMiuiThemeChanged$1;->$isDefaultSysUiTheme:Z

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onMiuiThemeChanged$1;->$isDefaultLockScreenTheme:Z

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onMiuiThemeChanged$1;->$isDefaultSysUiTheme:Z

    .line 6
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onMiuiThemeChanged(ZZ)V

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    return-object p0
    .line 13
.end method
