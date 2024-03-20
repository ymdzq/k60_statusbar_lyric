.class Lmiuix/animation/internal/TargetHandler$1;
.super Ljava/lang/Object;
.source "TargetHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/internal/TargetHandler;->runUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/internal/TargetHandler;

.field final synthetic val$toPage:Z


# direct methods
.method constructor <init>(Lmiuix/animation/internal/TargetHandler;Z)V
    .locals 0

    .line 144
    iput-object p1, p0, Lmiuix/animation/internal/TargetHandler$1;->this$0:Lmiuix/animation/internal/TargetHandler;

    iput-boolean p2, p0, Lmiuix/animation/internal/TargetHandler$1;->val$toPage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 147
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler$1;->this$0:Lmiuix/animation/internal/TargetHandler;

    iget-boolean p0, p0, Lmiuix/animation/internal/TargetHandler$1;->val$toPage:Z

    invoke-virtual {v0, p0}, Lmiuix/animation/internal/TargetHandler;->update(Z)V

    return-void
.end method
