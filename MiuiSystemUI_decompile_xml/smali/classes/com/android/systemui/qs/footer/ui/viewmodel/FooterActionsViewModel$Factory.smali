.class public final Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final context:Landroid/content/Context;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final footerActionsInteractor:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

.field public final globalActionsDialogLiteProvider:Ljavax/inject/Provider;

.field public final showPowerButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;Ljavax/inject/Provider;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;->footerActionsInteractor:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;->globalActionsDialogLiteProvider:Ljavax/inject/Provider;

    .line 11
    iput-boolean p5, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;->showPowerButton:Z

    .line 13
    return-void
    .line 15
.end method
