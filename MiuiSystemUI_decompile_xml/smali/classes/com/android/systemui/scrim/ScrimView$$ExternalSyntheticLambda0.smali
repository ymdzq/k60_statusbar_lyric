.class public final synthetic Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/scrim/ScrimView;

.field public final synthetic f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/scrim/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/scrim/ScrimView;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/scrim/ScrimView;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    iget-object v2, v0, Lcom/android/systemui/scrim/ScrimView;->mColorLock:Ljava/lang/Object;

    .line 8
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 11
    invoke-virtual {v3, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    monitor-exit v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 21
    invoke-virtual {v3, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 23
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/scrim/ScrimView;->updateColorWithTint(Z)V

    .line 27
    :goto_0
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
    .line 33
.end method
