.class public final Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

.field public final synthetic val$container:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;->this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;->val$container:Landroid/view/ViewGroup;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;->val$container:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;->this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->updateChips()V

    .line 13
    return-void
    .line 16
.end method
