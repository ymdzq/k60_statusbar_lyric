.class Lmiuix/appcompat/app/AppDelegate$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "AppDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AppDelegate;->installToDecor(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AppDelegate;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AppDelegate;Z)V
    .locals 0

    .line 575
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$2;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 0

    .line 578
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate$2;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-static {p0}, Lmiuix/appcompat/app/AppDelegate;->access$000(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->onBackPressed()V

    return-void
.end method
