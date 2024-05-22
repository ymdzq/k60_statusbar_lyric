.class public final synthetic Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mCallbacks:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda3;

    .line 6
    invoke-direct {v0}, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda3;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    return-void
    .line 14
.end method
