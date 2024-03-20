.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .locals 0

    .line 1886
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1889
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 1890
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$802(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1895
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 1896
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$802(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    return-void
.end method
