.class Lmiuix/appcompat/app/FragmentDelegate$2;
.super Lmiuix/responsive/page/manager/BaseResponseStateManager;
.source "FragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/responsive/interfaces/IResponsive;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 145
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
