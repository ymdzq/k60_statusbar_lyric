.class public final Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field public final list:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController$Callback;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;->callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;->list:Ljava/util/List;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;->callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;->list:Ljava/util/List;

    .line 6
    invoke-interface {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->onPrivacyItemsChanged(Ljava/util/List;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
