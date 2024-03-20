.class public Lcom/android/settings/KeyguardSettingsPreferenceFragment$SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "KeyguardSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/android/settings/KeyguardSettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/KeyguardSettingsPreferenceFragment$SpacesItemDecoration;->this$0:Lcom/android/settings/KeyguardSettingsPreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 54
    iput p2, p0, Lcom/android/settings/KeyguardSettingsPreferenceFragment$SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 60
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 61
    iget p0, p0, Lcom/android/settings/KeyguardSettingsPreferenceFragment$SpacesItemDecoration;->space:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method
