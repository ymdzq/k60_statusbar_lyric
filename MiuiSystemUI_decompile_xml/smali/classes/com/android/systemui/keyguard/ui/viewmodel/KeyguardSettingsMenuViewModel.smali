.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shouldOpenSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final text:Lcom/android/systemui/common/shared/model/Text$Resource;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;

    .line 5
    iget-object v0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isMenuVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 7
    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->shouldOpenSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 11
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;->shouldOpenSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 13
    new-instance p1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 15
    const v0, 0x7f081115    # @drawable/ic_palette 'res/drawable/ic_palette.xml'

    .line 17
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 24
    new-instance p1, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 26
    const v0, 0x7f1306a2    # @string/lock_screen_settings 'Customize lock screen'

    .line 28
    invoke-direct {p1, v0}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;->text:Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 34
    return-void
    .line 36
.end method
