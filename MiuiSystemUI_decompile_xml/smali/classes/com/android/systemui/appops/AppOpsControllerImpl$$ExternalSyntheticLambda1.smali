.class public final synthetic Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 5
    iput p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 11
    iput-boolean p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$4:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 2
    iget v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    iget-object v3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$4:Z

    .line 10
    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribersWorker(Ljava/lang/String;ZII)V

    .line 12
    return-void
    .line 15
.end method
