.class public final Lmiui/stub/MiuiStub$15;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lmiui/stub/MiuiStub;


# direct methods
.method public constructor <init>(Lmiui/stub/MiuiStub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getAodEnable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 12
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodEnable:Z

    .line 14
    return p0
    .line 16
.end method

.method public final getFaceUnlockSuccessStayScreen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 12
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->faceUnlockSuccessStayScreen:Z

    .line 14
    return p0
    .line 16
.end method

.method public final getInvertColorsEnable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 12
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->invertColorsEnable:Z

    .line 14
    return p0
    .line 16
.end method
