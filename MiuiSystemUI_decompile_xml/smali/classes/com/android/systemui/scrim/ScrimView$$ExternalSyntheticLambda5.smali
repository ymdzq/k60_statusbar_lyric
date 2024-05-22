.class public final synthetic Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/scrim/ScrimView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/scrim/ScrimView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/scrim/ScrimView;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/scrim/ScrimView;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;->f$1:Z

    .line 4
    invoke-static {v0, p0}, Lcom/android/systemui/scrim/ScrimView;->$r8$lambda$58RPn_Q24dN9AMFCzupw9Xbt1X0(Lcom/android/systemui/scrim/ScrimView;Z)V

    .line 6
    return-void
    .line 9
.end method
