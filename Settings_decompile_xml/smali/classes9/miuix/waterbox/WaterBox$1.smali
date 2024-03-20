.class Lmiuix/waterbox/WaterBox$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "WaterBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/waterbox/WaterBox;->initAnimConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/waterbox/WaterBox;


# direct methods
.method constructor <init>(Lmiuix/waterbox/WaterBox;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lmiuix/waterbox/WaterBox$1;->this$0:Lmiuix/waterbox/WaterBox;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 271
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 272
    iget-object p0, p0, Lmiuix/waterbox/WaterBox$1;->this$0:Lmiuix/waterbox/WaterBox;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/waterbox/WaterBox;->access$002(Lmiuix/waterbox/WaterBox;Z)Z

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 278
    iget-object p0, p0, Lmiuix/waterbox/WaterBox$1;->this$0:Lmiuix/waterbox/WaterBox;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lmiuix/waterbox/WaterBox;->access$002(Lmiuix/waterbox/WaterBox;Z)Z

    return-void
.end method
