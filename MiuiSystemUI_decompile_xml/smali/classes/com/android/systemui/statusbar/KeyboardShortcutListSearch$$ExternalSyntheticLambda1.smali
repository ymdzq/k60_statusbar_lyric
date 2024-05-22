.class public final synthetic Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSearchEditText:Landroid/widget/EditText;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    return-void
    .line 10
.end method
