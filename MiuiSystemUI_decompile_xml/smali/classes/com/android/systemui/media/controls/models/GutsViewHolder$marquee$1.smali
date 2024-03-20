.class public final Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $start:Z

.field public final synthetic this$0:Lcom/android/systemui/media/controls/models/GutsViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/models/GutsViewHolder;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;->this$0:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;->$start:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;->this$0:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/models/GutsViewHolder$marquee$1;->$start:Z

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8
    return-void
    .line 11
.end method
