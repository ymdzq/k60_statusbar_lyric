.class public final synthetic Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/scrim/ScrimView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/scrim/ScrimView;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/scrim/ScrimView;

    .line 5
    iput p2, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/scrim/ScrimView;

    .line 2
    iget v1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;->f$2:Z

    .line 6
    iget v2, v0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 8
    if-ne v2, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iput v1, v0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/scrim/ScrimView;->updateColorWithTint(Z)V

    .line 15
    :goto_0
    return-void
    .line 18
.end method
