.class Lmiuix/responsive/page/manager/BaseResponseStateManager$1;
.super Lmiuix/responsive/wrapper/Factory2Wrapper;
.source "BaseResponseStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-direct {p0}, Lmiuix/responsive/wrapper/Factory2Wrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-static {v0, p3, p1, p4, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->access$000(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/responsive/wrapper/Factory2Wrapper;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
