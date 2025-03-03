#pragma once

#include <stdint.h>

template <typename T>
struct QueueItem
{
    //
    // Implementation
    //

    T *data = 0;
};

template <typename T>
class SystemQueue
{
public:
    SystemQueue() {};
    ~SystemQueue() {};

    //
    // Implementation
    //
    void empty() {};
    T *pop_front() { return nullptr; };
    bool push_back(T *item) { return false; };
    uint16_t get_size() { return this->_size; };

private:
    uint16_t _size = 0;
};
