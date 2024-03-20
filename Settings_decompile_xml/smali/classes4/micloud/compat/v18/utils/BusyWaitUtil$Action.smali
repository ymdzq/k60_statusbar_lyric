.class public interface abstract Lmicloud/compat/v18/utils/BusyWaitUtil$Action;
.super Ljava/lang/Object;
.source "BusyWaitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmicloud/compat/v18/utils/BusyWaitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract doAction(JJ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)TValueType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException;
        }
    .end annotation
.end method
