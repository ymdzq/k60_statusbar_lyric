.class public final Lcom/google/android/material/datepicker/MaterialCalendar$10;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$10;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    iput p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar$10;->val$position:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$10;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$10;->val$position:I

    .line 6
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 8
    return-void
    .line 11
.end method
