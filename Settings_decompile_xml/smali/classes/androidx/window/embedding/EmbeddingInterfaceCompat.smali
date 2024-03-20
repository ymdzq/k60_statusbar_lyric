.class public interface abstract Landroidx/window/embedding/EmbeddingInterfaceCompat;
.super Ljava/lang/Object;
.source "EmbeddingInterfaceCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;
    }
.end annotation


# virtual methods
.method public abstract areSplitAttributesUpdatesSupported()Z
.end method

.method public abstract clearSplitAttributesCalculator()V
.end method

.method public abstract finishActivityStacks(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityStack;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract invalidateTopVisibleSplitAttributes()V
.end method

.method public abstract isActivityEmbedded(Landroid/app/Activity;)Z
.end method

.method public abstract isFinishActivityStacksSupported()Z
.end method

.method public abstract isSplitAttributesCalculatorSupported()Z
.end method

.method public abstract setEmbeddingCallback(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V
.end method

.method public abstract setLaunchingActivityStack(Landroid/app/ActivityOptions;Landroid/os/IBinder;)Landroid/app/ActivityOptions;
.end method

.method public abstract setRules(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSplitAttributesCalculator(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/window/embedding/SplitAttributesCalculatorParams;",
            "Landroidx/window/embedding/SplitAttributes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSplitAttributes(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V
.end method
