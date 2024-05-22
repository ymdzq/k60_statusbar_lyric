.class public final synthetic Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 5
    iput p2, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 2
    iget p0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 9
    invoke-virtual {v0, p0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_0
    return-void
    .line 19
.end method
