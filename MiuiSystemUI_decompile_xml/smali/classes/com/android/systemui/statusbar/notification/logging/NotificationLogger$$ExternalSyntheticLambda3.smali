.class public final synthetic Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 2
    iget-object p0, p1, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    .line 4
    return-object p0
    .line 6
.end method
