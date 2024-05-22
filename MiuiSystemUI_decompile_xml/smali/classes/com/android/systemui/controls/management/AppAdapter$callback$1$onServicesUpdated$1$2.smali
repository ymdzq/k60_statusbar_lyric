.class public final synthetic Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/controls/management/AppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/AppAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$2;->$tmp0:Lcom/android/systemui/controls/management/AppAdapter;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$2;->$tmp0:Lcom/android/systemui/controls/management/AppAdapter;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    return-void
    .line 7
.end method
