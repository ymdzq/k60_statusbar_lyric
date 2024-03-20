.class public final synthetic Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;->f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 7
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;->f$2:Z

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;->f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 4
    iget-boolean p0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    iget-object v0, v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 8
    invoke-virtual {v0, v1, p0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 10
    return-void
    .line 13
.end method
