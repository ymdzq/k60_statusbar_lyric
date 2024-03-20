.class Lcom/android/settings/display/FontAdapter$1;
.super Ljava/lang/Object;
.source "FontAdapter.java"

# interfaces
.implements Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FontAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/FontAdapter$FontViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FontAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FontAdapter;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/display/FontAdapter$1;->this$0:Lcom/android/settings/display/FontAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemTouch(Landroid/view/MotionEvent;I)Z
    .locals 5

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v1, p2

    .line 167
    iget-object p1, p0, Lcom/android/settings/display/FontAdapter$1;->this$0:Lcom/android/settings/display/FontAdapter;

    invoke-static {p1}, Lcom/android/settings/display/FontAdapter;->-$$Nest$fgetdownIndex(Lcom/android/settings/display/FontAdapter;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    .line 168
    iget-object p1, p0, Lcom/android/settings/display/FontAdapter$1;->this$0:Lcom/android/settings/display/FontAdapter;

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/display/FontAdapter;->setCurrentIndex(J)V

    .line 169
    iget-object p0, p0, Lcom/android/settings/display/FontAdapter$1;->this$0:Lcom/android/settings/display/FontAdapter;

    iget-object p1, p0, Lcom/android/settings/display/FontAdapter;->mListener:Lcom/android/settings/display/FontAdapter$FontSelectListener;

    if-eqz p1, :cond_3

    .line 170
    invoke-static {p0}, Lcom/android/settings/display/FontAdapter;->-$$Nest$fgetmList(Lcom/android/settings/display/FontAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p2, p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p2, p0}, Lcom/android/settings/display/FontAdapter$FontSelectListener;->fontSelected(IZ)V

    goto :goto_1

    .line 161
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/FontAdapter$1;->this$0:Lcom/android/settings/display/FontAdapter;

    int-to-long p1, p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/display/FontAdapter;->-$$Nest$fputdownIndex(Lcom/android/settings/display/FontAdapter;J)V

    :cond_3
    :goto_1
    return v0
.end method
