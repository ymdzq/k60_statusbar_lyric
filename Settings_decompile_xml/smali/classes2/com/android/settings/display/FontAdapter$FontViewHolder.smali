.class public Lcom/android/settings/display/FontAdapter$FontViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FontAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;
    }
.end annotation


# instance fields
.field checkBox:Lmiuix/visual/check/VisualCheckBox;

.field checkbox3points:Lmiuix/visual/check/VisualCheckBox;

.field private mListener:Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;

.field textView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/display/FontAdapter$FontViewHolder;)Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->mListener:Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 355
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 356
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkBox:Lmiuix/visual/check/VisualCheckBox;

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkBox:Lmiuix/visual/check/VisualCheckBox;

    new-instance v2, Lcom/android/settings/display/FontAdapter$FontViewHolder$1;

    invoke-direct {v2, p0}, Lcom/android/settings/display/FontAdapter$FontViewHolder$1;-><init>(Lcom/android/settings/display/FontAdapter$FontViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 365
    sget v0, Lcom/android/settings/R$id;->checkbox_3points:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkbox3points:Lmiuix/visual/check/VisualCheckBox;

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkbox3points:Lmiuix/visual/check/VisualCheckBox;

    new-instance v1, Lcom/android/settings/display/FontAdapter$FontViewHolder$2;

    invoke-direct {v1, p0}, Lcom/android/settings/display/FontAdapter$FontViewHolder$2;-><init>(Lcom/android/settings/display/FontAdapter$FontViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 374
    sget v0, Lcom/android/settings/R$id;->check_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setItemTouchListener(Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;)V
    .locals 1

    .line 380
    iput-object p1, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->mListener:Lcom/android/settings/display/FontAdapter$FontViewHolder$OnItemTouchListener;

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkBox:Lmiuix/visual/check/VisualCheckBox;

    new-instance v0, Lcom/android/settings/display/FontAdapter$FontViewHolder$3;

    invoke-direct {v0, p0}, Lcom/android/settings/display/FontAdapter$FontViewHolder$3;-><init>(Lcom/android/settings/display/FontAdapter$FontViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    iget-object p1, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder;->checkbox3points:Lmiuix/visual/check/VisualCheckBox;

    new-instance v0, Lcom/android/settings/display/FontAdapter$FontViewHolder$4;

    invoke-direct {v0, p0}, Lcom/android/settings/display/FontAdapter$FontViewHolder$4;-><init>(Lcom/android/settings/display/FontAdapter$FontViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
