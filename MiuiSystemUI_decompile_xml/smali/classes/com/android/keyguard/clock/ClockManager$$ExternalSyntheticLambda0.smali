.class public final synthetic Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Resources;

.field public final synthetic f$1:Landroid/view/LayoutInflater;

.field public final synthetic f$2:Lcom/android/systemui/colorextraction/SysuiColorExtractor;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Resources;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/LayoutInflater;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Resources;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/LayoutInflater;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 6
    new-instance v2, Lcom/android/keyguard/clock/DefaultClockController;

    .line 8
    invoke-direct {v2, v0, v1, p0}, Lcom/android/keyguard/clock/DefaultClockController;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    .line 10
    return-object v2
    .line 13
.end method
