.class Lmiuix/animation/controller/FolmeBlink$1;
.super Ljava/lang/Object;
.source "FolmeBlink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeBlink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeBlink;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeBlink;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$1;->this$0:Lmiuix/animation/controller/FolmeBlink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink$1;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget-object v0, v0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IBlinkStyle$BlinkType;->HIGHLIGHT:Lmiuix/animation/IBlinkStyle$BlinkType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink$1;->this$0:Lmiuix/animation/controller/FolmeBlink;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeBlink;->access$000(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
