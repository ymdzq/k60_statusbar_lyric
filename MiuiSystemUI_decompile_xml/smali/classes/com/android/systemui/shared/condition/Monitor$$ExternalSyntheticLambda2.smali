.class public final synthetic Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/condition/Monitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    .line 2
    check-cast p1, Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor;->mSubscriptions:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->update(Lcom/android/systemui/shared/condition/Monitor;)V

    .line 14
    return-void
    .line 17
.end method
