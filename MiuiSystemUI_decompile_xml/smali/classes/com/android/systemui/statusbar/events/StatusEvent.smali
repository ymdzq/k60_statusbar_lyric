.class public interface abstract Lcom/android/systemui/statusbar/events/StatusEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract getContentDescription()Ljava/lang/String;
.end method

.method public abstract getForceVisible()Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract getShowAnimation()Z
.end method

.method public abstract getViewCreator()Lkotlin/jvm/functions/Function1;
.end method

.method public abstract setForceVisible()V
.end method

.method public abstract shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z
.end method

.method public abstract updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
.end method
