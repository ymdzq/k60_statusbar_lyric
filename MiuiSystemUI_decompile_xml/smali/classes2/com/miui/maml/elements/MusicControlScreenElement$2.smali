.class Lcom/miui/maml/elements/MusicControlScreenElement$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/MusicControlScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$2;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$2;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 2
    invoke-static {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2300(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1400(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    .line 8
    return-void
    .line 11
.end method
