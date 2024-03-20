.class Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter$1;
.super Ljava/lang/Object;
.source "ResolverSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter$1;->this$1:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    const/4 p0, 0x0

    return p0
.end method
