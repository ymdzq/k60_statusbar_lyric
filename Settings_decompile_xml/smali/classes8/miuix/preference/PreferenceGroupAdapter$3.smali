.class Lmiuix/preference/PreferenceGroupAdapter$3;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceGroupAdapter;->requestHighlight(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 411
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$100(Lmiuix/preference/PreferenceGroupAdapter;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$200(Lmiuix/preference/PreferenceGroupAdapter;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 416
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$202(Lmiuix/preference/PreferenceGroupAdapter;Z)Z

    .line 417
    new-instance p2, Lmiuix/preference/PreferenceGroupAdapter$3$1;

    invoke-direct {p2, p0}, Lmiuix/preference/PreferenceGroupAdapter$3$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter$3;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    .line 433
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$100(Lmiuix/preference/PreferenceGroupAdapter;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$200(Lmiuix/preference/PreferenceGroupAdapter;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 438
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$202(Lmiuix/preference/PreferenceGroupAdapter;Z)Z

    .line 439
    new-instance p2, Lmiuix/preference/PreferenceGroupAdapter$3$2;

    invoke-direct {p2, p0}, Lmiuix/preference/PreferenceGroupAdapter$3$2;-><init>(Lmiuix/preference/PreferenceGroupAdapter$3;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method