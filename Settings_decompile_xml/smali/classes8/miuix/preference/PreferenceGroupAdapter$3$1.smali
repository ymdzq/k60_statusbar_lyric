.class Lmiuix/preference/PreferenceGroupAdapter$3$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceGroupAdapter$3;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/preference/PreferenceGroupAdapter$3;


# direct methods
.method constructor <init>(Lmiuix/preference/PreferenceGroupAdapter$3;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$3$1;->this$1:Lmiuix/preference/PreferenceGroupAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 420
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter$3$1;->this$1:Lmiuix/preference/PreferenceGroupAdapter$3;

    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight()V

    return-void
.end method
