.class public final synthetic Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/analytics/MiuiTrackManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 4
    iput-object p2, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 8
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 12
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 14
    check-cast p0, Ljava/util/List;

    .line 16
    invoke-static {v0, v1, v2, p0}, Lcom/miui/analytics/MiuiTrackManagerImpl;->$r8$lambda$bUeT1HcJNOuS8nLmA4oMdIkNzbc(Lcom/miui/analytics/MiuiTrackManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 18
    return-void

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 22
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 26
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 30
    invoke-static {v0, v1, v2, p0}, Lcom/miui/analytics/MiuiTrackManagerImpl;->$r8$lambda$nnXPHlqnRYneg1u9TIdSYVaapZ8(Lcom/miui/analytics/MiuiTrackManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
